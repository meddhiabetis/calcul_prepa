/*appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 46, 79, 79),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 44, 51, 51),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 14, 131, 136),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          ),
        ),*/

import 'package:flutter/material.dart';

class MyTheme {
  static final darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 46, 79, 79),
        ),
      scaffoldBackgroundColor: const Color.fromARGB(255, 44, 51, 51),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 14, 131, 136),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
        ),
      ));
  static final lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 46, 79, 79),
        ),
      scaffoldBackgroundColor: Color.fromARGB(255, 226, 226, 226),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 14, 131, 136),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
        ),
      ));
}

