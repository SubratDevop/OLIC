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
  static double defaultPadding = 20;

  static double contentPadding = 12;

  static double icondefaultSize = 20;

  static double iconsmallSize = 15;

}
