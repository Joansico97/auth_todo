import 'package:auth_todo_flutter/presentation/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

part 'router_handler.dart';
part 'router_paths.dart';

final routerProvider = Provider<GoRouter>((ref) => _appRouter);

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

final _appRouter = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: RouterPaths.home,
  routes: [
    GoRoute(
      path: RouterPaths.home,
      name: RouterPaths.home,
      parentNavigatorKey: rootNavigatorKey,
      builder: _homeHandler,
    ),
  ],
);
