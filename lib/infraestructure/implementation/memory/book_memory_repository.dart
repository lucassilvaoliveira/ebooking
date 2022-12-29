import 'package:ebooking/core/entities/book.dart';
import 'package:ebooking/infraestructure/interface/interface_book_repository.dart';

class BookMemoryRepository implements InterfaceBookRepository {
  @override
  Future<Book> changeFavoriteBookValue({required Book book}) async {
    book.favorite = !book.favorite;
    return book;
  }

  @override
  Future<Book> changeReadingBookValue({required Book book}) async {
    book.reading = !book.reading;
    return book;
  }

  @override
  Future<Book> changeInterestingBookValue({required Book book}) async {
    book.interesting = !book.interesting;
    return book;
  }
  
  @override
  Future<Book> defineRatingBookValue({required Book book, required double newRating}) async {
    book.rating = newRating;
    return book;
  }
  
  @override
  Future<List<Book>> findBookByTitle({required List<Book> books, required String titleToFind}) async {
    return books.where((element) {
      if (element.title == titleToFind) return true;
      return false;
    }).toList();
  }
  
  @override
  Future<List<Book>> findBookByAuthor({required List<Book> books, required String authorToFind}) async {
    return books.where((element) {
      if (element.authors.contains(authorToFind)) return true;
      return false;
    }).toList();
  }
  
  @override
  Future<List<Book>> findFavoriteBook({required List<Book> books, required bool favorite}) async {
    return books.where((element) {
      if (element.favorite == favorite) return true;
      return false;
    }).toList();
  }
}