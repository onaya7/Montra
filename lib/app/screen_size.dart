import 'package:flutter/material.dart';

class ScreenSize {
  ScreenSize._();
  static double maxWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double maxHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
