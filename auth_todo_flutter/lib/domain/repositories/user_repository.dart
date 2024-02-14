abstract class UserRepository {
  Future<void> login();
  Future<bool> isLogged();
  Future<void> register();
  Future<void> logOut();
}
