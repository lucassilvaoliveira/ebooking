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
    if (inMemoryUsers == null) {
      return users;
    }

    for (int index = 0; index < inMemoryUsers!; index++) {
      users.add(User(
          id: "id $index",
          username: "username $index",
          email: "email $index",
          password: "password $index"));
    }
    return users;
  }
}
