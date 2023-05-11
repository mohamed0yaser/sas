import 'package:flutter/material.dart';

class AppColor {
  static const Color colorGreen = Color(0xFF1ABC00);
  // static const Color colorYellow = Color(0xFFFACC1D);
  // static const Color darkBlue = Color(0xFF141A2E);

  static final ThemeData lightTheme = ThemeData(
      progressIndicatorTheme: ProgressIndicatorThemeData(color: colorGreen),
      primaryColor: colorGreen,
      scaffoldBackgroundColor: Colors.transparent,
      backgroundColor: Colors.white,
      textTheme: TextTheme(
          headline4: TextStyle(fontSize: 28, color: Colors.black),
          headline5: TextStyle(fontSize: 24, color: Colors.black)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: colorGreen,
          selectedIconTheme: IconThemeData(
            size: 32,
          ),
          unselectedIconTheme: IconThemeData(size: 24)),
      // appBarTheme: AppBarTheme(
      //     iconTheme: IconThemeData(color: Colors.black),
      //     backgroundColor: Colors.transparent,
      //     elevation: 0,
      //     titleTextStyle: TextStyle(color: Colors.black, fontSize: 28))
  );
  // static final ThemeData darkTheme = ThemeData(
  //     progressIndicatorTheme: ProgressIndicatorThemeData(color: colorGreen),
  //     primaryColor: colorGreen,
  //     scaffoldBackgroundColor: Colors.transparent,
  //     backgroundColor: darkBlue,
  //     textTheme: TextTheme(
  //         headline4: TextStyle(fontSize: 28, color: Colors.white),
  //         headline5: TextStyle(fontSize: 24, color: Colors.white)),
  //     bottomNavigationBarTheme: BottomNavigationBarThemeData(
  //         selectedItemColor: colorGreen,
  //         selectedIconTheme: IconThemeData(
  //           size: 32,
  //         ),
  //         unselectedIconTheme: IconThemeData(size: 24)),
  //     appBarTheme: AppBarTheme(
  //         iconTheme: IconThemeData(color: Colors.white),
  //         backgroundColor: Colors.transparent,
  //         elevation: 0,
  //         titleTextStyle: TextStyle(color: Colors.white, fontSize: 28)));
}