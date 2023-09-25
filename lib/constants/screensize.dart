import 'package:flutter/material.dart';

class ScreenSize {
  static height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}

class AppDimension {
  static double defaultPadding = 15;

  static double contentPadding = 12;

  static double icondefaultSize = 20;

  static double iconsmallSize = 15;

//! Text Size
  static double get bigTextSize => 18;

  static double get defaultTextSize => 12;

  static double get mediumTextSize => 14;

  static double get smallTextSize => 10;

  static double get verySmallTextSize => 8;
}
