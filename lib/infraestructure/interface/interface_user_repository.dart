import 'package:ebooking/core/entities/user.dart';

abstract class InterfaceUserRepository {
  Future<String> createNewUser(User user);
}