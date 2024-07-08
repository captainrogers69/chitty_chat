import 'package:chittychat/utils/constants/k_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    primaryColor: Colors.deepPurple,
    // accentColor: Colors.orange,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.deepPurple,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.black),
      bodyMedium: TextStyle(color: Colors.black),
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.deepPurple,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.deepPurple,
    ),
    iconTheme: const IconThemeData(
      color: Colors.deepPurple,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: KColors.blackColor,
    primaryColor: Colors.deepPurple,
    // accentColor: Colors.orange,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.deepPurple,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.black),
      bodyMedium: TextStyle(color: Colors.black),
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.deepPurple,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.deepPurple,
    ),
    iconTheme: const IconThemeData(
      color: Colors.deepPurple,
    ),
    fontFamily: GoogleFonts.oswald().fontFamily,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.linux: OpenUpwardsPageTransitionsBuilder(),
        TargetPlatform.macOS: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.fuchsia: FadeUpwardsPageTransitionsBuilder(),
      },
    ),
  );
}
