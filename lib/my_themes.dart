import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyThemeData{
  static const Color lightColor = Color(0xffB7935F);
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: lightColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: lightColor,
        size: 30
      )
    ),
    textTheme: TextTheme(
      bodySmall: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: lightColor
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: lightColor
      ),
      bodyLarge: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: lightColor,
      type: BottomNavigationBarType.shifting,
      selectedItemColor: Colors.black,
      selectedLabelStyle: TextStyle(
        color: Colors.black,
        fontSize: 17
      ),
      unselectedItemColor: Colors.white,
      unselectedLabelStyle: TextStyle(
          color: Colors.white
      )
    )
  );
  static ThemeData darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true
    )
  );
}