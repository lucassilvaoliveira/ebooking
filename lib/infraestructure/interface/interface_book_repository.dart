import 'package:ebooking/core/entities/book.dart';

abstract class InterfaceBookRepository {
  Future<Book> changeFavoriteBookValue({required Book book});
}