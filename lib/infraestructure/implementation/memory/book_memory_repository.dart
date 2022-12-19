import 'package:ebooking/core/entities/book.dart';
import 'package:ebooking/infraestructure/interface/interface_book_repository.dart';

class BookMemoryRepository implements InterfaceBookRepository {
  @override
  Future<Book> changeFavoriteBookValue({required Book book}) async {
    book.favorite = !book.favorite;
    return book;
  }
}