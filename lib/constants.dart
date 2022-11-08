import 'package:flutter/material.dart';

class Constants {
  //Colors
  static const Color green = Color(0xFF00C337);
  static const Color darkPink = Color(0xFFD70067);
  static const Color white = Color(0xFFFFFFFF);
  static const Color grey = Color(0xFFEEEEEE);
  static const Color black = Color(0xFF323232);
  static const Color dividerGrey = Color(0xFFEEEEEE);
  static const Color pink = Color(0xFFFF0096);
  //Text Style
  static TextStyle textStyleWO(
      {required double fontSize,
      required FontWeight fontWeight,
      required Color color}) {
    return TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color);
  }
}
