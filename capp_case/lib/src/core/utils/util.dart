import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension NavigatorOrMessage on BuildContext {
  void snackbar({required String message}) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  void pop() {
    Navigator.pop(this);
  }

  void pushNamed(String route) {
    Navigator.pushNamed(this, route);
  }
}

extension StringUtils on String {
  String toCapital() {
    final characters = split('');
    return characters[0].toUpperCase() +
        characters.sublist(1).join('').toLowerCase();
  }
}

extension IntUtils on int {
  String idr() {
    return NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp',
      decimalDigits: 0,
    ).format(this);
  }
}

extension StringDateFormat on String {
  String dateFormat() {
    return DateFormat("EEEE, dd MMMM yyyy").format(DateTime.parse(this));
  }
}
