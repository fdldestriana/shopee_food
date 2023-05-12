import 'package:flutter/material.dart';

class ColorLib {
  static final darkBlack = '#191919'.toColor();
  static final primaryColor = '#FF792E'.toColor();
  static final secondary = '#FFAB3B'.toColor();
  static final tertary = '#FFD12F'.toColor();
  static final quaternary = '#FFF23E'.toColor();
  static final white = '#FFFFFF'.toColor();
}

extension ColorExtension on String {
  toColor() {
    var hexColor = replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}
