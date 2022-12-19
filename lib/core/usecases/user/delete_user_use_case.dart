import 'package:ebooking/core/entities/user.dart';
import 'package:ebooking/infraestructure/interface/interface_user_repository.dart';

class DeleteUserUseCase {
  InterfaceUserRepository interfaceUserRepository;

  DeleteUserUseCase({required this.interfaceUserRepository});

  Future<List<User>> execute({
    required List<User> userList,
    required int indexForUserToBeDeleted,
  }) async =>
      await interfaceUserRepository.deleteUserByIndexInList(
        userList: userList,
        indexForUserToBeDeleted: indexForUserToBeDeleted,
      );
}
