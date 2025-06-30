import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity.dart';

abstract class HomeLocalDataRepo {
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> fetchNewestBooks();
}
