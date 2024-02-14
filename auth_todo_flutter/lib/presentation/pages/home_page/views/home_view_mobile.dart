import 'package:auth_todo_flutter/domain/models/models.dart';
import 'package:auth_todo_flutter/infraestructure/providers/providers.dart';
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
          ),
          body: const Center(
            child: Text('Hola mundo'),
          ),
        );
      },
    );
  }
}
