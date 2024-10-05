import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyThemeData{
  static const Color lightColor = Color(0xffB7935F);
  static const Color darkColor = Color(0xff141A2E);
  static const Color yellowColor = Color(0xffFACC1D);
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
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: lightColor
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.black54
      ),
      bodyLarge: GoogleFonts.elMessiri(
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
    ),
    colorScheme: ColorScheme(
      primary: lightColor,
      onPrimary: Colors.black54,
      secondary: Colors.grey.shade300,
      onSecondary: Colors.black,
      error: Colors.red,
      onError: Colors.white,
      surface: Colors.white,
      onSurface: Colors.black54,
      brightness:Brightness.light
    )
  );
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: darkColor,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
              color: Colors.white,
              size: 30
          )
      ),
      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: yellowColor
        ),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),
      ),
      colorScheme: const ColorScheme(
          primary: darkColor,
          onPrimary: Colors.white,
          secondary: yellowColor,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          surface: darkColor,
          onSurface: yellowColor,
          brightness:Brightness.dark
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: darkColor,
          type: BottomNavigationBarType.shifting,
          selectedItemColor: yellowColor,
          selectedLabelStyle: TextStyle(
              color: yellowColor,
              fontSize: 17
          ),
          unselectedItemColor: Colors.white,
          unselectedLabelStyle: TextStyle(
              color: darkColor
          )
      )
  );
}