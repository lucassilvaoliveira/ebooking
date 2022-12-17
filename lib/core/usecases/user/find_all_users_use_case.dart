import 'package:ebooking/core/entities/user.dart';
import 'package:ebooking/infraestructure/interface/interface_user_repository.dart';

class FindAllUsersUseCase {
  InterfaceUserRepository interfaceUserRepository;

  FindAllUsersUseCase({required this.interfaceUserRepository});

  Future<List<User>> execute() => interfaceUserRepository.findAllUsers();
}