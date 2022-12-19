import 'package:ebooking/core/entities/book.dart';
import 'package:ebooking/infraestructure/interface/interface_book_repository.dart';

class DefineRatingToBookUseCase {
  InterfaceBookRepository interfaceBookRepository;
  
  DefineRatingToBookUseCase({required this.interfaceBookRepository});

  Future<Book> execute({required Book book, required double newRating}) async => await interfaceBookRepository.defineRatingBookValue(book: book, newRating: newRating);
}