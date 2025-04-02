import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.purple,
    brightness: Brightness.light,
  ),
  scaffoldBackgroundColor: Colors.white,
  cardColor: Colors.white,
  canvasColor: Colors.grey[200],
  dividerColor: Colors.grey[400],
  highlightColor: Colors.purple,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      backgroundColor: WidgetStatePropertyAll(Colors.purple),
      foregroundColor: WidgetStatePropertyAll(Colors.white),
      textStyle: WidgetStatePropertyAll(
        TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ),
  ),
);

final darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.teal,
    brightness: Brightness.dark,
  ),
  scaffoldBackgroundColor: const Color.fromARGB(255, 82, 93, 98),
  canvasColor: const Color.fromARGB(255, 82, 93, 98),
  cardColor: Colors.indigo,
  dividerColor: Colors.white,
  highlightColor: Colors.teal,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      backgroundColor: WidgetStatePropertyAll(Colors.teal),
      foregroundColor: WidgetStatePropertyAll(Colors.white),
      textStyle: WidgetStatePropertyAll(
        TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ),
  ),
);
