import 'package:flutter/material.dart';
import 'package:islami_app/screens/hadith_details.dart';
import 'package:islami_app/screens/home_screen.dart';
import 'package:islami_app/screens/settings_screen.dart';
import 'package:islami_app/screens/splash_screen.dart';
import 'package:islami_app/screens/sura_details.dart';
Map<String, WidgetBuilder> appRoutes = {
  SplashScreen.routeName : (context) => const SplashScreen(),
  HomeScreen.routeName : (context) => HomeScreen(),
  SuraDetails.routeName : (context) => const SuraDetails(),
  HadithDetails.routeName : (context) => const HadithDetails(),
  SettingsScreen.routeName : (context) => const SettingsScreen()
};