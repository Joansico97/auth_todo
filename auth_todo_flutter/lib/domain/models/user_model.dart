import 'package:auth_todo_flutter/domain/models/models.dart';

class UserModel {
  final String name;
  final List<TodoModel> todoList;

  UserModel({
    required this.name,
    required this.todoList,
  });

  UserModel copyWith({
    String? name,
    List<TodoModel>? todoList,
  }) =>
      UserModel(
        name: name ?? this.name,
        todoList: todoList ?? this.todoList,
      );

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["name"],
        todoList: List<TodoModel>.from(json["todoList"].map((x) => TodoModel.fromMap(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "todoList": List<TodoModel>.from(todoList.map((x) => x)),
      };
}
