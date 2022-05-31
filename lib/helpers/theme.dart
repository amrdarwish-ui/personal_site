import 'package:flutter/material.dart';

ThemeData getTheme() {
  return ThemeData(
      primarySwatch: Colors.blue,
      colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Colors.yellow,
          onPrimary: Colors.black,
          secondary: Color(0xFFcdcdcd),
          onSecondary: Color(0xFFcdcdcd),
          error: Colors.red,
          onError: Colors.red,
          background: Colors.transparent,
          onBackground: Colors.transparent,
          surface: Colors.transparent,
          onSurface: Colors.transparent));
}
