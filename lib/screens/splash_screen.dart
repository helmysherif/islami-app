import 'dart:async';
import 'package:flutter/material.dart';
import 'package:islami_app/screens/home_screen.dart';
class SplashScreen extends StatefulWidget {
  static const String routeName = "splash";
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(bottom: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg2.png"),
              fit: BoxFit.cover
            )
          ),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Image.asset(
                    "assets/images/logo2.png",
                    height: MediaQuery.of(context).size.height * 0.4,
                  ),
                ),
              ),
              // Image.asset("assets/images/Group 7.png"),
            ],
          ),
        ),
      ),
    );
  }
}
