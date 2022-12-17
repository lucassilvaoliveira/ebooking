import 'dart:math';

import 'package:ebooking/core/entities/user.dart';
import 'package:ebooking/core/usecases/user/create_new_user_use_case.dart';
import 'package:ebooking/core/usecases/user/find_all_users_use_case.dart';
import 'package:ebooking/infraestructure/implementation/memory/user_memory_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("should be create an new user", () async {
    User user = User(id: "any_id", username: "any_username", email: "any_email", password: "any_password");
    CreateNewUserUseCase createNewUserUseCase = CreateNewUserUseCase(interfaceUserRepository: UserMemoryRepository(inMemoryUsers: null));

    final sut = await createNewUserUseCase.execute(user: user);

    expect(sut, "User created successfully!");
  });

  test("should be return error because trying create a null user", () async {
    CreateNewUserUseCase createNewUserUseCase = CreateNewUserUseCase(interfaceUserRepository: UserMemoryRepository(inMemoryUsers: null));

    final sut = await createNewUserUseCase.execute(user: null);

    expect(sut, "User cannot be null!");
  });

  test("should be return a populate user list", () async {
    final random = Random();
    final inMemoryUsers = random.nextInt(15) + 1;
    FindAllUsersUseCase findAllUsersUseCase = FindAllUsersUseCase(interfaceUserRepository: UserMemoryRepository(inMemoryUsers: inMemoryUsers));

    final sut = await findAllUsersUseCase.execute();

    expect(sut.isNotEmpty, true);
    expect(sut.length, inMemoryUsers);
  });

  test("should be return a empty user list", () async {
    FindAllUsersUseCase findAllUsersUseCase = FindAllUsersUseCase(interfaceUserRepository: UserMemoryRepository(inMemoryUsers: null));

    final sut = await findAllUsersUseCase.execute();

    expect(sut.isEmpty, true);
    expect(sut.length, 0);
  });
}