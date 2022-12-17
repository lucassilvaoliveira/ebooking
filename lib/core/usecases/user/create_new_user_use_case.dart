import 'package:ebooking/core/entities/user.dart';
import 'package:ebooking/infraestructure/interface/interface_user_repository.dart';

class CreateNewUserUseCase {
  
  InterfaceUserRepository interfaceUserRepository;

  CreateNewUserUseCase({required this.interfaceUserRepository});

  Future<String> execute({required User? user}) async {
    if (user == null) {
      return 'User cannot be null!';
    }

    return await interfaceUserRepository.createNewUser(user: user);
  }
}