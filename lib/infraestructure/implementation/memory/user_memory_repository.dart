import 'package:ebooking/core/entities/user.dart';
import 'package:ebooking/infraestructure/interface/interface_user_repository.dart';

class UserMemoryRepository implements InterfaceUserRepository {
  @override
  Future<String> createNewUser(User user) async => 'User created successfully!';

}