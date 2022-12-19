import 'package:ebooking/core/entities/book.dart';
import 'package:ebooking/infraestructure/interface/interface_book_repository.dart';

class FindBookByTitleUseCase {
  InterfaceBookRepository interfaceBookRepository;

  FindBookByTitleUseCase({required this.interfaceBookRepository});

  Future<List<Book>> execute(
          {required List<Book> books, required String titleToFind}) async =>
      await interfaceBookRepository.findBookByTitle(
          books: books, titleToFind: titleToFind);
}
