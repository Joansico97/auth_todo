import 'package:auth_todo_flutter/core/utils/size.dart';
import 'package:auth_todo_flutter/domain/models/models.dart';
import 'package:auth_todo_flutter/infraestructure/providers/providers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeViewMobile extends StatelessWidget {
  const HomeViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              ref.read(todoProvider).addTodo(
                    TodoModel(
                      title: 'title',
                      description: 'description',
                      state: false,
                    ),
                  );
            },
            child: const Icon(Icons.add),
          ),
          body: SafeArea(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return TodoView(
                  title: 'Title',
                  description: 'Aliquip irure aliqua proident dolore velit aute nisi dolor et.',
                  isDone: index == 0 ? true : false,
                  onDoubleTap: () => debugPrint('Edito'),
                  onLongTap: () => debugPrint('Eliminar?'),
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class TodoView extends StatelessWidget {
  const TodoView({
    super.key,
    required this.title,
    required this.description,
    required this.isDone,
    required this.onDoubleTap,
    required this.onLongTap,
  });

  final String title;
  final String description;
  final bool isDone;
  final VoidCallback onDoubleTap;
  final VoidCallback onLongTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onDoubleTap: onDoubleTap,
      onLongPress: onLongTap,
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      child: Container(
        height: size.height(context, .12),
        padding: size.symmetric(context, .05, .03),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.black12,
              width: 2,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: size.width(
                      context,
                      .05,
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width(context, .6),
                  child: Text(
                    description,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: size.width(context, .03),
                    ),
                  ),
                ),
              ],
            ),
            CupertinoSwitch(
              value: isDone,
              onChanged: (value) {
                value = !value;
              },
            ),
          ],
        ),
      ),
    );
  }
}
