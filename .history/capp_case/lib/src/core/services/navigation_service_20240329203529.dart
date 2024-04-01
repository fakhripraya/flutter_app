import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class NavigationService {
  final navigatorKey = GlobalKey<NavigatorState>();

  bool canPop() {
    return false;
  }

  void push(String route) {
    navigatorKey.currentState?.pushNamed(route);
  }

  void pushRemoveUntil(String route) {
    navigatorKey.currentState?.pushNamedAndRemoveUntil(route, (route) => false);
  }

  void pop() {
    navigatorKey.currentState?.pop();
  }
}
