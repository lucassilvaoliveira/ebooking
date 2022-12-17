import 'package:ebooking/core/entities/user.dart';
import 'package:ebooking/core/usecases/user/create_new_user_use_case.dart';
import 'package:ebooking/infraestructure/implementation/memory/user_memory_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("should be create an new user", () async {
    User user = User(id: "any_id", username: "any_username", email: "any_email", password: "any_password");
    CreateNewUserUseCase createNewUserUseCase = CreateNewUserUseCase(interfaceUserRepository: UserMemoryRepository());

    final sut = await createNewUserUseCase.execute(user);

    expect(sut, "User created successfully!");
  });
}