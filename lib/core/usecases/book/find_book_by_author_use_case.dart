import 'package:ebooking/core/entities/book.dart';
import 'package:ebooking/infraestructure/interface/interface_book_repository.dart';

class FindBookByAuthorUseCase {
  InterfaceBookRepository interfaceBookRepository;

  FindBookByAuthorUseCase({required this.interfaceBookRepository});

  Future<List<Book>> execute({required List<Book> books, required String authorToFind}) async => await interfaceBookRepository.findBookByAuthor(books: books, authorToFind: authorToFind);
}