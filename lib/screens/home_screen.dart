import 'package:flutter/material.dart';
import 'package:islami_app/screens/hadith.dart';
import 'package:islami_app/screens/quran_screen.dart';
import 'package:islami_app/screens/radio.dart';
import 'package:islami_app/screens/sebiha.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName = "quran_screen";
  HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> tabs =  [QuranScreen() , const HadithScreen() , const SebihaScreen() , const RadioScreen()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              "assets/images/bg3.png",
              fit: BoxFit.fill,
            ),
          ),
          Scaffold(
            appBar: AppBar(
              title: Text(
                "إسلامي",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold
                ),
              ),
              centerTitle: true,
            ),
            body: tabs[index],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,
              onTap:(int value){
                index = value;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/quran.png")),
                  label: "Quran",
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/ahadeth.png")),
                  label: "Hadith",
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: "Sebiha",
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/radio.png")),
                  label: "Radio",
                  backgroundColor: Theme.of(context).primaryColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
