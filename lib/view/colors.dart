import 'package:flutter/material.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

const Color PinkBackground = Color(0xFFfbf0ee);

const Color PinkBackgroundsecondary = Color(0xFFffcfca);
const Color black = Color(0xFF000000);
const Color white = Color(0xFFFFFFFF);
const Color Grey = Color(0xFFd0ccca);
const Color GreyDark = Color(0xFFA9A9A9);
const Color GreyDark1 = Color(0xFF848884);
const Color red = Color(0xFFec5766);
const Color green = Color(0xFF43aa8b);
const Color blue = Color(0xFF28c2ff);