import 'package:clean_arch_bookly_app/features/home/data/data_source/local_data/home_local_data_repo.dart';
import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity.dart';

class HomeLocalDataImpl extends HomeLocalDataRepo {
  @override
  List<BookEntity> fetchFeaturedBooks() {
    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    throw UnimplementedError();
  }
}
