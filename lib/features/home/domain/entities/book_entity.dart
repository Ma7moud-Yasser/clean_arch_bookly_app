class BookEntity {
  final String title;
  final String authorName;
  final String coverImageUrl;
  final num price;
  final num rating;
  final int viewersCount;

  BookEntity({
    required this.price,
    required this.rating,
    required this.viewersCount,
    required this.title,
    required this.authorName,
    required this.coverImageUrl,
  });
}
