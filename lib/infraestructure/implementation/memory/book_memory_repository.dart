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
}