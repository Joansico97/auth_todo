import 'package:auth_todo_flutter/domain/resources/resources.dart';
import 'package:flutter/material.dart';

class UserResourceServerpod implements UserResource {
  @override
  Future<bool> isLogged() async {
    debugPrint('Is Logged');
    return true;
  }

  @override
  Future<void> logOut() async {
    debugPrint('Log Out');
  }

  @override
  Future<void> login() async {
    debugPrint('Login');
  }

  @override
  Future<void> register() async {
    debugPrint('Register');
  }
}
