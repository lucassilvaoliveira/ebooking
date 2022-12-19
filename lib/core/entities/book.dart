class Book {
  String id;
  List<String> authors;
  String title;
  String description;
  String language;
  String category;
  int pageCount;
  List<String> imageLinks;
  DateTime publishedAt;

  Book({
    required this.id,
    required this.authors,
    required this.title,
    required this.description,
    required this.language,
    required this.category,
    required this.pageCount,
    required this.imageLinks,
    required this.publishedAt
  });
}