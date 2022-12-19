import 'package:ebooking/core/entities/user.dart';
import 'package:ebooking/infraestructure/interface/interface_user_repository.dart';

class UserMemoryRepository implements InterfaceUserRepository {
  int? inMemoryUsers;

  UserMemoryRepository({required this.inMemoryUsers});

  @override
  Future<String> createNewUser({required User user}) async =>
      'User created successfully!';

  @override
  Future<List<User>> findAllUsers() async {
    List<User> users = [];
    if (inMemoryUsers == null || inMemoryUsers == 0) {
      return users;
    }

    for (int index = 0; index < inMemoryUsers!; index++) {
      users.add(
        User(
            id: "id $index",
            username: "username $index",
            email: "email $index",
            password: "password $index"),
      );
    }
    return users;
  }
  
  @override
  Future<List<User>> deleteUserByIndexInList({required List<User> userList, required int indexForUserToBeDeleted}) async {
    if (inMemoryUsers != null && inMemoryUsers != 0) {
      userList.removeAt(indexForUserToBeDeleted);
      return userList;
    }
    return [];
  }
  
  
}
