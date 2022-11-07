import 'package:flutter/material.dart';

class Constants {
  //Colors
  static const Color green = Color(0xFF00C337);
  static const Color darkPink = Color(0xFFD70067);
  static const Color white = Color(0xFFFFFFFF);
  //Text Style
  static TextStyle textStyleWO(
      {required double fontSize,
      required FontWeight fontWeight,
      required Color color}) {
    return TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color);
  }
}

