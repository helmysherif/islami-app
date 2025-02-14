import 'package:flutter/material.dart';
import 'package:islami_app/my_themes.dart';
import 'package:islami_app/routes.dart';
import 'package:islami_app/screens/splash_screen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: appRoutes,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme
    );
  }
}
