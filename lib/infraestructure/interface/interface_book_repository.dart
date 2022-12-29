import 'package:ebooking/core/entities/book.dart';

abstract class InterfaceBookRepository {
  Future<Book> changeFavoriteBookValue({required Book book});

  Future<Book> changeReadingBookValue({required Book book});

  Future<Book> changeInterestingBookValue({required Book book});

  Future<Book> defineRatingBookValue({required Book book, required double newRating});

  Future<List<Book>> findBookByTitle({required List<Book> books, required String titleToFind});

  Future<List<Book>> findBookByAuthor({required List<Book> books, required String authorToFind});
}