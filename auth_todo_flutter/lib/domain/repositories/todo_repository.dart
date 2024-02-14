import 'package:auth_todo_flutter/domain/models/models.dart';

abstract class TodoRepository {
  Future<List<TodoModel>> getTodos();
  Future<void> addTodo(TodoModel todo);
  Future<void> updateTodo(TodoModel todo);
  Future<void> updateTodoStatus(int id, bool isCompleted);
  Future<void> deleteTodoById(int id);
  Future<void> deleteAllTodos();
}
