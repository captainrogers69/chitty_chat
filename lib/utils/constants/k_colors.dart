import 'package:flutter/material.dart';

class KColors {
  /// primary
  static Color whiteColor = Colors.white;
  static Color blackColor = Colors.black;
  static Color transparentColor = Colors.transparent;

  /// Grey Color
  static Color grey100 = Colors.grey[100]!;
  static Color grey200 = Colors.grey[200]!;
  static Color grey300 = Colors.grey[300]!;
  static Color grey400 = Colors.grey[400]!;
  static Color grey500 = Colors.grey[500]!;
  static Color grey600 = Colors.grey[600]!;
  static Color grey700 = Colors.grey[700]!;
  static Color grey800 = Colors.grey[800]!;
  static Color grey900 = Colors.grey[900]!;
  static Color darkDarkGreyColor = const Color(0xff40444d);

  /// Secondary Grey Color
  static Color primaryTextGreyColor = const Color(0xff565c68);
  static Color iconGreyColor = const Color(0xff949c98);

  /// Scaffold Color
  static Color scaffoldColor = Colors.white;
  static Color scaffoldGreyColor = const Color(0xffeeefee);
  static Color scaffoldDarkColor = Colors.black;

  /// Primary Color
  static Color darkPrimary = const Color(0xff2d9cdb);

  /// Colors
  static Color errorColor = const Color(0xffff5252);
  static Color switchColor = const Color(0xff1BAC4B);
  static Color switchDarkColor = const Color(0xff1B5E20);
  static Color successColor = const Color(0xff468847);

  /// Color Tools
  static WidgetStateProperty<Color> fetchMaterial(Color color) {
    return WidgetStateProperty.all<Color>(color);
  }
}
