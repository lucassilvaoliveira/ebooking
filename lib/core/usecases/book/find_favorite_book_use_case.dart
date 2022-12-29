import 'package:ebooking/core/entities/book.dart';
import 'package:ebooking/infraestructure/interface/interface_book_repository.dart';

class FindFavoriteBookUseCase {
  InterfaceBookRepository interfaceBookRepository;

  FindFavoriteBookUseCase({required this.interfaceBookRepository});

  Future<List<Book>> execute({required List<Book> books, required bool favorite}) async => interfaceBookRepository.findFavoriteBook(books: books, favorite: favorite); 
}