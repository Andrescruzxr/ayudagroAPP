import 'dart:html';

import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 3, 61, 22);

  static final ThemeData darkTheme = ThemeData.light().copyWith(
      // AppBar
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),
      // texto botones
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)));
}
