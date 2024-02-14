import 'package:auth_todo_flutter/core/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthTodoApp extends ConsumerWidget {
  const AuthTodoApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      title: 'Auth Todo App',
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
