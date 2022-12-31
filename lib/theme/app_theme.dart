
import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.indigoAccent;


  // Light Theme
  static final ThemeData lightTheme =  ThemeData.light().copyWith(
        
        //Primary color
        primaryColor: Colors.indigoAccent,
        
        //AppBar Theme
        appBarTheme: const  AppBarTheme(
          color:  primary,
          elevation: 2
        ),


        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: Colors.indigoAccent))
      );



      //Dark Theme
  static final ThemeData darkTheme =  ThemeData.dark().copyWith(
        
        //Primary color
        primaryColor: Colors.indigoAccent,
        
        //AppBar Theme
        appBarTheme: const  AppBarTheme(
          color:  primary,
          elevation: 2
        ),
      );


}