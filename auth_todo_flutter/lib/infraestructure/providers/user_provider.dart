import 'package:auth_todo_flutter/domain/repositories/repositories.dart';
import 'package:auth_todo_flutter/infraestructure/repositories/repositories_impl.dart';
import 'package:auth_todo_flutter/infraestructure/resources/resources_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userProvider = Provider<UserRepository>((ref) => UserRepositoryImpl(UserResourceServerpod()));
// final todoProvider = Provider<TodoRepository>((ref) => TodoRepositoryImpl(TodoResourceFirebase()));