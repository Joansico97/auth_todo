import 'package:auth_todo_flutter/domain/models/todo_model.dart';
import 'package:auth_todo_flutter/domain/repositories/repositories.dart';
import 'package:auth_todo_flutter/domain/resources/resources.dart';

class TodoRepositoryImpl implements TodoRepository {
  TodoRepositoryImpl(this._todoResource);
  final TodoResource _todoResource;
  @override
  Future<void> addTodo(TodoModel todo) {
    return _todoResource.addTodo(todo);
  }

  @override
  Future<void> deleteAllTodos() {
    return _todoResource.deleteAllTodos();
  }

  @override
  Future<void> deleteTodoById(int id) {
    return _todoResource.deleteTodoById(id);
  }

  @override
  Future<List<TodoModel>> getTodos() {
    return _todoResource.getTodos();
  }

  @override
  Future<void> updateTodo(TodoModel todo) {
    return _todoResource.updateTodo(todo);
  }

  @override
  Future<void> updateTodoStatus(int id, bool isCompleted) {
    return _todoResource.updateTodoStatus(id, isCompleted);
  }
}
