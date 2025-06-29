import 'package:flutter/material.dart';

class AppTheme {
  static Color white = const Color(0xFFFFFFFF);
  static Color gray = const Color(0xFFC8C9CB);
  static Color primaryBlue = const Color(0xFF5D9CEC);
  static Color babyBlue = const Color.fromRGBO(223, 236, 219, 1);

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: babyBlue,
    primaryColor: Color(0xFF5D9CEC),

    appBarTheme: AppBarTheme(
      backgroundColor: primaryBlue,
      foregroundColor: white,
      centerTitle: false,
      elevation: 0,
      toolbarHeight: 100.0,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.bold )
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryBlue,
       shape: CircleBorder( )
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: white,
      selectedItemColor: primaryBlue,
      unselectedItemColor: gray,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      shape: CircularNotchedRectangle(),
      padding: EdgeInsets.zero,
      elevation: 0,
    ),
    
  );
}
