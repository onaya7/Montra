import 'package:flutter/material.dart';

// Color hexToColor(String hex) {
//   assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
//       'hex color must be #rrggbb or #rrggbbaa');

//   return Color(
//     int.parse(hex.substring(1), radix: 16) +
//         (hex.length == 7 ? 0xff000000 : 0x00000000),
//   );
// }

class ColorConstants {
  ColorConstants._();

  //App Colors'
  static const Color violetColor100 = Color.fromRGBO(127, 61, 255, 1);
  static const Color violetColor50 = Color.fromRGBO(238, 229, 255, 1);

  //Light Theme Colors
  static const Color lightColor20 = Color.fromRGBO(145, 145, 159, 1);
  static const Color lightColor60 = Color.fromRGBO(241, 241, 250, 1);
  static const Color lightColor80 = Color.fromRGBO(252, 252, 252, 1);
  static const Color lightColor100 = Color.fromRGBO(255, 255, 255, 1);
  static const Color iconColor = Color.fromRGBO(198, 198, 198, 1);

  //Dark Theme Colors
  static const Color darkColor25 = Color.fromRGBO(41, 43, 45, 1);
  static const Color darkColor50 = Color.fromRGBO(33, 35, 37, 1);
  static const Color darkColor75 = Color.fromRGBO(22, 23, 25, 1);
  static const Color darkColor100 = Color.fromRGBO(13, 14, 15, 1);
}
