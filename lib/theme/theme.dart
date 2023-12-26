import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  listTileTheme: ListTileThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    contentPadding: const EdgeInsets.all(12.0),
    tileColor: Color.fromARGB(240, 216, 194, 0),
    titleTextStyle: const TextStyle(
      color: Color.fromARGB(255, 255, 255, 255),
      fontWeight: FontWeight.w700,
      fontSize: 20,
    ),
  ),
  scaffoldBackgroundColor: const Color.fromARGB(154, 1, 1, 1),
  colorScheme:
      ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 185, 167, 0)),
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 185, 167, 0),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 210, 189, 1),
      foregroundColor: Colors.black,
      disabledBackgroundColor: const Color.fromARGB(255, 108, 98, 0),
      disabledForegroundColor: Colors.black,
      elevation: 4.0,
    ),
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: Color.fromARGB(255, 255, 255, 255),
      fontWeight: FontWeight.w500,
      fontSize: 20,
    ),
    labelSmall: TextStyle(
      color: Color.fromARGB(255, 255, 255, 255),
      fontWeight: FontWeight.w700,
      fontSize: 14,
    ),
  ),
);
