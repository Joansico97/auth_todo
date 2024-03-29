import 'package:auth_todo_flutter/core/extensions/extensions.dart';
import 'package:auth_todo_flutter/core/utils/utils.dart';
import 'package:flutter/material.dart';

abstract class BasePage extends StatelessWidget {
  const BasePage({super.key});

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 1280) {
            return webBody(context) ?? const _BaseWidget();
          } else if (constraints.maxWidth >= 650) {
            return tabletBody(context) ?? const _BaseWidget();
          } else {
            return mobileBody(context) ?? const _BaseWidget();
          }
        },
      );

  Widget? mobileBody(BuildContext context) => null;
  Widget? tabletBody(BuildContext context) => null;
  Widget? webBody(BuildContext context) => null;
}

class _BaseWidget extends StatelessWidget {
  const _BaseWidget();

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: SizedBox(
            height: size.fullHeight(context),
            width: size.fullWidth(context),
            child: Center(
              child: Text(context.locale.commingSoon),
            ),
          ),
        ),
      );
}
