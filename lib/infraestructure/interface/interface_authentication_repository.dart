abstract class InterfaceAuthenticationRepository {
  Future<bool> login({required String username, required String password});
}