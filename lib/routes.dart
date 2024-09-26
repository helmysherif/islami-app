import 'package:flutter/material.dart';
import 'package:islami_app/screens/home_screen.dart';
import 'package:islami_app/screens/splash_screen.dart';
import 'package:islami_app/screens/sura_details.dart';
Map<String, WidgetBuilder> appRoutes = {
  SplashScreen.routeName : (context) => const SplashScreen(),
  HomeScreen.routeName : (context) => HomeScreen(),
  SuraDetails.routeName : (context) => SuraDetails()
};