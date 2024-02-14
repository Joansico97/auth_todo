import 'package:auth_todo_flutter/domain/models/models.dart';
import 'package:auth_todo_flutter/domain/resources/resources.dart';
import 'package:flutter/material.dart';

class TodoResourcceServerpod implements TodoResource {
  @override
  Future<void> addTodo(TodoModel todo) async {
    debugPrint('Agrego Todo');
  }

  @override
  Future<void> deleteAllTodos() async {
    debugPrint('Elimino todos los Todos');
  }

  @override
  Future<void> deleteTodoById(int id) async {
    debugPrint('Elimino el todo con id $id');
  }

  @override
  Future<List<TodoModel>> getTodos() async {
    debugPrint('Devuelvo todos los Todo');
    return [];
  }

  @override
  Future<void> updateTodo(TodoModel todo) async {
    debugPrint('Acctualizo Todo');
  }

  @override
  Future<void> updateTodoStatus(int id, bool isCompleted) async {
    debugPrint('Acctualizo estado del Todo $id a $isCompleted');
  }
}
