import 'package:clean_arch_bookly_app/core/resources/cache_keys.dart';
import 'package:clean_arch_bookly_app/features/home/data/data_source/local_data/home_local_data_repo.dart';
import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:hive_flutter/adapters.dart';

class HomeLocalDataImpl extends HomeLocalDataRepo {
  @override
  List<BookEntity> fetchFeaturedBooks() {
    var box = Hive.box<BookEntity>(CacheKeys.featuredBook);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    var box = Hive.box<BookEntity>(CacheKeys.newestBook);
    return box.values.toList();
  }
}
