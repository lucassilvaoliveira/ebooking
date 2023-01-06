import 'package:ebooking/infraestructure/interface/interface_authentication_repository.dart';

class LoginUseCase {
  InterfaceAuthenticationRepository interfaceAuthenticationRepository;

  LoginUseCase({required this.interfaceAuthenticationRepository});

  Future<bool> execute({required String username, required String password}) async => await interfaceAuthenticationRepository.login(username: username, password: password);
}