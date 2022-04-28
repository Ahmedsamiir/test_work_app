

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

ThemeData lightTheme = ThemeData(
    //primarySwatch: Colors.grey.shade400,
    primaryColor: defaultColor,

    scaffoldBackgroundColor: defaultColor,
    appBarTheme: const AppBarTheme(
      titleSpacing: 20.0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: defaultColor,
        statusBarIconBrightness: Brightness.dark,
      ),

      backgroundColor: defaultColor,
      elevation: 0.0,
      titleTextStyle: TextStyle(
        fontSize: 20.0,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
          color: Colors.black
      ),

    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
     // backgroundColor: defaultColor,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      //selectedItemColor: Colors.grey.shade400,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.white,
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: Colors.black26,
      ),
    ),
    //fontFamily: 'Jannah'
);