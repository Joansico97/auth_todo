import 'package:auth_todo_flutter/core/utils/utils.dart';
import 'package:auth_todo_flutter/presentation/pages/home_page/views/views.dart';
import 'package:flutter/material.dart';

class HomePage extends BasePage {
  const HomePage({super.key});

  @override
  Widget? mobileBody(BuildContext context) {
    return const HomeViewMobile();
  }
}
