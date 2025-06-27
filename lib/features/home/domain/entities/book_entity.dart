class BookEntity {
  final String title;
  final String authorName;
  final String coverImageUrl;
  final num price;
  final num rating;
  final int viewersCount;

  BookEntity(
    this.price,
    this.rating,
    this.viewersCount,
    this.title,
    this.authorName,
    this.coverImageUrl,
  );
}
