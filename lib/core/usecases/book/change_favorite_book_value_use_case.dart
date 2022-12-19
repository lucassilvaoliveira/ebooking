import 'package:ebooking/core/entities/book.dart';
import 'package:ebooking/infraestructure/interface/interface_book_repository.dart';

class ChangeFavoriteBookValueUseCase {
  InterfaceBookRepository interfaceBookRepository;

  ChangeFavoriteBookValueUseCase({required this.interfaceBookRepository});

  Future<Book> execute({required Book book}) async =>
      await interfaceBookRepository.changeFavoriteBookValue(book: book);
}
