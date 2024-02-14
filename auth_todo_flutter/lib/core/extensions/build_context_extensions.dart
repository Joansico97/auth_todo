import 'package:auth_todo_flutter/gen/l10n.dart';
import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  IntlTrans get locale => IntlTrans.of(this);
}
