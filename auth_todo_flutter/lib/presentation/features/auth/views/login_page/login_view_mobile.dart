import 'package:auth_todo_flutter/core/extensions/build_context_extensions.dart';
import 'package:auth_todo_flutter/core/utils/utils.dart';
import 'package:flutter/material.dart';

class LoginViewMobile extends StatelessWidget {
  const LoginViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: size.horizontal(context, .05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: size.height(context, .15)),
                  Text(
                    context.locale.todo,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size.width(context, .2),
                      color: AppColors.text,
                    ),
                  ),
                  Text(
                    context.locale.loginMessage,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size.width(context, .1),
                      color: AppColors.text,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    left: size.width(context, .15),
                  ),
                  child: Container(
                    height: size.height(context, .5),
                    decoration: BoxDecoration(
                      color: AppColors.grey,
                      border: const Border(
                        top: BorderSide(
                          color: AppColors.beige,
                          width: 4,
                        ),
                        left: BorderSide(
                          color: AppColors.beige,
                          width: 4,
                        ),
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          size.width(context, .1),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
