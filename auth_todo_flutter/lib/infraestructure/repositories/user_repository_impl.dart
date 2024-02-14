import 'package:auth_todo_flutter/domain/repositories/repositories.dart';
import 'package:auth_todo_flutter/domain/resources/resources.dart';

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this._userResource);

  final UserResource _userResource;
  @override
  Future<bool> isLogged() async {
    return _userResource.isLogged();
  }

  @override
  Future<void> logOut() async {
    return _userResource.logOut();
  }

  @override
  Future<void> login() async {
    return _userResource.login();
  }

  @override
  Future<void> register() async {
    return _userResource.register();
  }
}
