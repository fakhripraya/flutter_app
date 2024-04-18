import 'package:flutter/material.dart';

extension NavigatorOrMessage on BuildContext {
  void snackbar({required String message}) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  void pop() {
    Navigator.pop(this);
  }
}
