import 'package:flutter/material.dart';

class BuildBody {
  static Future<Object?> navigator(BuildContext context, int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return Navigator.pushNamed(context, '/home');
      case 1:
        return Navigator.pushNamed(context, '/transaction');
      case 2:
        return Navigator.pushNamed(context, '/budget');
      case 3:
        return Navigator.pushNamed(context, '/profile');
      default:
        return Navigator.pushNamed(context, '/home');
    }
  }
}
