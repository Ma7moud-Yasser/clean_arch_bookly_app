import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

void saveData(List<BookEntity> books, String boxKey) {
  var box = Hive.box(boxKey);
  box.addAll(books);
}
