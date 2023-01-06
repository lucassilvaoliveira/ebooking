import 'package:ebooking/core/usecases/authentication/login_use_case.dart';
import 'package:ebooking/infraestructure/implementation/memory/authentication_memory_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("should authenticate login", () async {
    LoginUseCase loginUseCase = LoginUseCase(interfaceAuthenticationRepository: AuthenticationMemoryRepository());
    const String username = "username 1";
    const String password = "password 1";

    final sut = await loginUseCase.execute(username: username, password: password);

    expect(sut, true);
  });
}