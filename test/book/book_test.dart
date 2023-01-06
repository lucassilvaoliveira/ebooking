import 'dart:math';

import 'package:ebooking/core/entities/book.dart';
import 'package:ebooking/core/usecases/book/change_favorite_book_value_use_case.dart';
import 'package:ebooking/core/usecases/book/change_interesting_book_value_use_case.dart';
import 'package:ebooking/core/usecases/book/change_reading_book_value_use_case.dart';
import 'package:ebooking/core/usecases/book/define_rating_to_book_use_case.dart';
import 'package:ebooking/core/usecases/book/find_book_by_author_use_case.dart';
import 'package:ebooking/core/usecases/book/find_book_by_name_use_case.dart';
import 'package:ebooking/core/usecases/book/find_favorite_book_use_case.dart';
import 'package:ebooking/infraestructure/implementation/memory/book_memory_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("should be change favorite book value", () async {
    ChangeFavoriteBookValueUseCase changeFavoriteBookValueUseCase =
        ChangeFavoriteBookValueUseCase(
            interfaceBookRepository: BookMemoryRepository());

    Book sut = Book(
      id: "any_id",
      title: "any_title",
      description: "any_description",
      language: "any_language",
      category: ["any_category"],
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

    await changeFavoriteBookValueUseCase.execute(book: sut);

    expect(sut.favorite, true);

    await changeFavoriteBookValueUseCase.execute(book: sut);

    expect(sut.favorite, false);
  });

  test("should be change reading book value", () async {
    ChangeReadingBookValueUseCase changeReadingBookValueUseCase =
        ChangeReadingBookValueUseCase(
            interfaceBookRepository: BookMemoryRepository());
    Book sut = Book(
      id: "any_id",
      title: "any_title",
      description: "any_description",
      language: "any_language",
      category: ["any_category"],
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

    expect(sut.reading, false);

    await changeReadingBookValueUseCase.execute(book: sut);

    expect(sut.reading, true);

    await changeReadingBookValueUseCase.execute(book: sut);

    expect(sut.reading, false);
  });

  test("should be change interesting book value", () async {
    ChangeInterestingBookValueUseCase changeInterestingBookValueUseCase =
        ChangeInterestingBookValueUseCase(
            interfaceBookRepository: BookMemoryRepository());
    Book sut = Book(
      id: "any_id",
      title: "any_title",
      description: "any_description",
      language: "any_language",
      category: ["any_category"],
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

    expect(sut.interesting, false);

    await changeInterestingBookValueUseCase.execute(book: sut);

    expect(sut.interesting, true);

    await changeInterestingBookValueUseCase.execute(book: sut);

    expect(sut.interesting, false);
  });

  test("should be define new rating book value", () async {
    final random = Random();
    final newRating = random.nextDouble() * 5.1;
    DefineRatingToBookUseCase defineRatingToBookUseCase =
        DefineRatingToBookUseCase(
            interfaceBookRepository: BookMemoryRepository());
    Book sut = Book(
      id: "any_id",
      title: "any_title",
      description: "any_description",
      language: "any_language",
      category: ["any_category"],
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

    expect(sut.rating, 0);

    await defineRatingToBookUseCase.execute(book: sut, newRating: newRating);

    expect(sut.rating, newRating);
  });

  test("should be find books by title", () async {
    const listLenght = 10;
    const titleToFind = "title 1";
    List<Book> sut = [];
    for (int i = 0; i < listLenght; i++) {
      sut.add(
        Book(
          id: "id $i",
          title: "title $i",
          description: "description $i",
          language: "language $i",
          category: ["category $i"],
          status: "status $i",
          favorite: false,
          reading: false,
          interesting: false,
          pageCount: 0,
          rating: 0,
          authors: ["authors $i"],
          imageLinks: ["imageLinks $i"],
          publishedAt: DateTime.now(),
        ),
      );
    }

    FindBookByTitleUseCase findBookByTitleUseCase = FindBookByTitleUseCase(
      interfaceBookRepository: BookMemoryRepository(),
    );

    expect(sut.length, listLenght);

    sut = await findBookByTitleUseCase.execute(
        books: sut, titleToFind: titleToFind);

    expect(sut.length, 1);
    expect(sut.first.title, titleToFind);
  });

  test("should be find books by author", () async {
    const listLenght = 10;
    const authorToFind = "authors 3";
    List<Book> books = [];
    for (int i = 0; i < listLenght; i++) {
      books.add(
        Book(
          id: "id $i",
          title: "title $i",
          description: "description $i",
          language: "language $i",
          category: ["category $i"],
          status: "status $i",
          favorite: false,
          reading: false,
          interesting: false,
          pageCount: 0,
          rating: 0,
          authors: ["authors $i"],
          imageLinks: ["imageLinks $i"],
          publishedAt: DateTime.now(),
        ),
      );
    }
    FindBookByAuthorUseCase findBookByAuthorUseCase = FindBookByAuthorUseCase(
      interfaceBookRepository: BookMemoryRepository(),
    );

    final sut = await findBookByAuthorUseCase.execute(
      books: books,
      authorToFind: authorToFind,
    );

    expect(sut.length, 1);
    expect(sut.first.authors.first, authorToFind);
  });

  test("should be return favorite books", () async {
    const listLenght = 10;
    const favoriteBooks = 3;
    List<Book> books = [];
    for (int i = 0; i < listLenght; i++) {
      books.add(
        Book(
          id: "id $i",
          title: "title $i",
          description: "description $i",
          language: "language $i",
          category: ["category $i"],
          status: "status $i",
          favorite: false,
          reading: false,
          interesting: false,
          pageCount: 0,
          rating: 0,
          authors: ["authors $i"],
          imageLinks: ["imageLinks $i"],
          publishedAt: DateTime.now(),
        ),
      );
    }
    for (int i = 0; i < favoriteBooks; i++) {
      books.add(
        Book(
          id: "id $i",
          title: "title $i",
          description: "description $i",
          language: "language $i",
          category: ["category $i"],
          status: "status $i",
          favorite: true,
          reading: false,
          interesting: false,
          pageCount: 0,
          rating: 0,
          authors: ["authors $i"],
          imageLinks: ["imageLinks $i"],
          publishedAt: DateTime.now(),
        ),
      );
    }

    FindFavoriteBookUseCase findFavoriteBooksUseCase = FindFavoriteBookUseCase(
      interfaceBookRepository: BookMemoryRepository(),
    );

    final sut = await findFavoriteBooksUseCase.execute(books: books, favorite: true);

    expect(books.length, listLenght + favoriteBooks);
    expect(sut.length, favoriteBooks);
  });
}
