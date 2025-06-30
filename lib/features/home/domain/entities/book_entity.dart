import 'package:hive/hive.dart';
part 'book_entity.g.dart';

@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String bookId;
  @HiveField(1)
  final String? title;
  @HiveField(2)
  final String? authorName;
  @HiveField(3)
  final String? coverImageUrl;
  @HiveField(4)
  final num? price;
  @HiveField(5)
  final num? rating;
  @HiveField(6)
  final num? viewersCount;

  BookEntity({
    required this.bookId,
    required this.price,
    required this.rating,
    required this.viewersCount,
    required this.title,
    required this.authorName,
    required this.coverImageUrl,
  });
}
