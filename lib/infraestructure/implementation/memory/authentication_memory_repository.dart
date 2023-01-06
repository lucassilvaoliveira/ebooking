import 'package:ebooking/core/entities/user.dart';
import 'package:ebooking/infraestructure/interface/interface_authentication_repository.dart';

class AuthenticationMemoryRepository implements InterfaceAuthenticationRepository {

  @override
  Future<bool> login({required String username, required String password}) async {
    List<User> users = [];
    for (int i = 0; i < 5; i++) {
        users.add(User(id: "id $i", username: "username $i", email: "email $i", password: "password $i"));
    }
    final loginResult = users.where((element) {
      if (element.username == username && element.password == password) return true;
      return false;
    });
    return loginResult.isNotEmpty ? true : false;
  }

}