import 'dart:math';

import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigoAccent;

  // Light Theme
  static final ThemeData lightTheme = ThemeData.light().copyWith(   //Tema principal de la app estilos a los widgets

      //Primary color
      primaryColor: Colors.indigoAccent,

      //AppBar Theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 2),

      //TextButton
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: Colors.indigoAccent)),

      //FloatingActionButton
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 3),

      //ElevateButtons
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigoAccent,
              shape: const StadiumBorder(),
              elevation: 1)));

  //Dark Theme
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //Primary color
    primaryColor: Colors.indigoAccent,

    //AppBar Theme
    appBarTheme: const AppBarTheme(color: primary, elevation: 2),
  );
}
