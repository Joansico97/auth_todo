import 'package:auth_todo_flutter/core/router/router.dart';
import 'package:auth_todo_flutter/gen/l10n.dart';
import 'package:auth_todo_flutter/infraestructure/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthTodoApp extends ConsumerWidget {
  const AuthTodoApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final locale = ref.watch(localeProvider);
    return MaterialApp.router(
      title: 'Auth Todo App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        IntlTrans.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: locale,
      supportedLocales: IntlTrans.delegate.supportedLocales,
      routerConfig: router,
    );
  }
}
