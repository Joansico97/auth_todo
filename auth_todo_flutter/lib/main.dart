import 'package:auth_todo_client/auth_todo_client.dart';
import 'package:auth_todo_flutter/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

// production servers.
var client = Client('http://$localhost:8080/')..connectivityMonitor = FlutterConnectivityMonitor();

Future<void> main() async {
  runApp(const ProviderScope(child: AuthTodoApp()));
}
