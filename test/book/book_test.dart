import 'dart:math';

import 'package:ebooking/core/entities/book.dart';
import 'package:ebooking/core/usecases/book/change_favorite_book_value_use_case.dart';
import 'package:ebooking/infraestructure/implementation/memory/book_memory_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("should be change favorite book value", () async {
    ChangeFavoriteBookValueUseCase markOneBookToFavoriteUseCase =
        ChangeFavoriteBookValueUseCase(
            interfaceBookRepository: BookMemoryRepository());

    Book sut = Book(
      id: "any_id",
      title: "any_title",
      description: "any_description",
      language: "any_language",
      category: "any_category",
      status: "any_status",
      favorite: false,
      reading: false,
      interesting: false,
      pageCount: 0,
      rating: 0,
      authors: ["any_author"],
      imageLinks: ["any_image_link"],
      publishedAt: DateTime.now(),
    );

    expect(sut.favorite, false);

    await markOneBookToFavoriteUseCase.execute(book: sut);

    expect(sut.favorite, true);

    await markOneBookToFavoriteUseCase.execute(book: sut);

    expect(sut.favorite, false);
  });
}
