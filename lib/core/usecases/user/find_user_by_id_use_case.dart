import 'package:ebooking/core/entities/user.dart';
import 'package:ebooking/infraestructure/interface/interface_user_repository.dart';

class FindUserByIdUseCase {
  InterfaceUserRepository interfaceUserRepository;

  FindUserByIdUseCase({required this.interfaceUserRepository});

  Future<User> execute({required List<User> userList, required String userId}) async => await interfaceUserRepository.findUserById(userList: userList, userId: userId);
}