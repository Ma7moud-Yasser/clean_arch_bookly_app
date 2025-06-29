class EndPoint {
  static const String baseUrl = 'https://www.googleapis.com/books/v1/volumes';

  static const String featuredBooks = '$baseUrl?q=best+books&maxResults=10';
  static const String newBooks = '$baseUrl?q=new+books&maxResults=10';
  static const String searchBooks = '$baseUrl?q=';
  static const String bookDetails = '$baseUrl/';
}
