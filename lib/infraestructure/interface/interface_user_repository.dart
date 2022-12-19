import 'package:ebooking/core/entities/user.dart';

abstract class InterfaceUserRepository {
  Future<String> createNewUser({required User user});

  Future<List<User>> findAllUsers();

  Future<List<User>> deleteUserByIndexInList({required List<User> userList, required int indexForUserToBeDeleted});

  Future<User> findUserById({required List<User> userList, required String userId});
}