import 'package:auth_todo_flutter/core/utils/utils.dart';
import 'package:auth_todo_flutter/presentation/features/auth/views/login_page/login_view_mobile.dart';
import 'package:flutter/material.dart';

class LoginPage extends BasePage {
  const LoginPage({super.key});

  @override
  Widget? mobileBody(BuildContext context) {
    return const LoginViewMobile();
  }
}
