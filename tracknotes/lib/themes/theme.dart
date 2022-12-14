import 'package:flutter/material.dart';

// creation d'une class theme
class ThemeCarotte {
  static final ligthTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xfffafafa),
      foregroundColor: Colors.black,
      elevation: 0,
    ),
    colorScheme: const ColorScheme.light().copyWith(
      primary: const Color(0xff2C3079),
      onPrimary: Colors.white,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xff2C3079),
      foregroundColor: Colors.white,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent,
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all(
        const Color(0xff2C3079),
      ),
    ),
    dialogTheme: const DialogTheme(
      contentTextStyle: TextStyle(
        color: Colors.black,
        fontFamily: "poppins",
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontFamily: "poppins",
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    cardTheme: const CardTheme(color: Colors.white),
    shadowColor: Colors.grey.withOpacity(0.1),
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontFamily: "poppins",
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: Colors.black,
      ),
      headline2: TextStyle(
        fontFamily: "poppins",
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: Colors.black,
      ),
      bodyText1: TextStyle(
        fontFamily: "poppins",
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.black,
      ),
      bodyText2: TextStyle(
        fontFamily: "poppins",
        color: Colors.black,
      ),
    ),
  );
  static final darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: const Color(0xff2C3079),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all(const Color(0xff7b61ff)),
    ),
    dialogBackgroundColor: const Color.fromARGB(255, 36, 36, 41),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xff2C3079),
      elevation: 0,
    ),
    shadowColor: Colors.black.withOpacity(0.1),
    dialogTheme: const DialogTheme(
      contentTextStyle: TextStyle(
        color: Colors.white,
        fontFamily: "poppins",
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontFamily: "poppins",
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    cardTheme: const CardTheme(color: Color.fromARGB(255, 36, 36, 41)),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: const Color(0xff7b61ff),
      onPrimary: Colors.white,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.white10,
      foregroundColor: Colors.white,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontFamily: "poppins",
        fontWeight: FontWeight.bold,
        fontSize: 35,
        color: Colors.white,
      ),
      headline2: TextStyle(
        fontFamily: "poppins",
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: Colors.white,
      ),
      bodyText1: TextStyle(
        fontFamily: "poppins",
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.white,
      ),
      bodyText2: TextStyle(
        fontFamily: "poppins",
        color: Colors.white,
      ),
    ),
  );
}
