import 'package:clean_arch_bookly_app/core/resources/api/api_service.dart';
import 'package:clean_arch_bookly_app/core/resources/api/end_point.dart';
import 'package:clean_arch_bookly_app/core/resources/cache_keys.dart';
import 'package:clean_arch_bookly_app/features/home/data/data_source/remote_data/home_remote_data_repo.dart';
import 'package:clean_arch_bookly_app/features/home/data/data_source/remote_data/methods/get_books_list.dart';
import 'package:clean_arch_bookly_app/features/home/data/data_source/remote_data/methods/save_data.dart';
import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity.dart';

class HomeRemoteDataSourceImpl extends HomeRemoteDataRepo {
  final ApiService _apiService;

  HomeRemoteDataSourceImpl({required ApiService apiService})
    : _apiService = apiService;

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await _apiService.getRequest(EndPoint.featuredBooks);
    List<BookEntity> books = getBooksList(data);
    saveData(books, CacheKeys.featuredBook);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await _apiService.getRequest(EndPoint.newBooks);
    List<BookEntity> books = getBooksList(data);
    saveData(books, CacheKeys.newestBook);
    return books;
  }
}
