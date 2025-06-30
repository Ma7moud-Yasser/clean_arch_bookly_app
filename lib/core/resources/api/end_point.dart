class EndPoint {
  static const String baseUrl = 'https://www.googleapis.com/books/v1/volumes';

  static const String featuredBooks = '$baseUrl?q=programming';
  static const String newBooks = '$baseUrl?q=programming&sorting=newest';
  static const String searchBooks = '$baseUrl?q=';
  static const String bookDetails = '$baseUrl/';
}
