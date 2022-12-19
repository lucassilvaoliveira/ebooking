class Book {
  String id;
  String title;
  String description;
  String language;
  String category;
  String status;
  bool favorite = false;
  bool reading;
  bool interesting;
  int pageCount;
  double rating;
  List<String> authors;
  List<String> imageLinks;
  DateTime publishedAt;

  Book({
    required this.id,
    required this.title,
    required this.description,
    required this.language,
    required this.category,
    required this.status,
    required this.favorite,
    required this.reading,
    required this.interesting,
    required this.pageCount,
    required this.rating,
    required this.authors,
    required this.imageLinks,
    required this.publishedAt,
  });
}
