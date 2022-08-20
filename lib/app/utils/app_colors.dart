import 'package:flutter/material.dart';

class AppColors {
  static Color appRed = HexColor('#FF444F');
  static Color appGrey = HexColor('#767676');
}

class HexColor extends Color {
  HexColor(String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColorString) {
    var hexColor = hexColorString;
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }
}
