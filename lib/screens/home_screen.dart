import 'package:flutter/material.dart';
import 'package:islami_app/screens/hadith.dart';
import 'package:islami_app/screens/quran_screen.dart';
import 'package:islami_app/screens/radio.dart';
import 'package:islami_app/screens/sebiha.dart';
import 'package:islami_app/screens/settings_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName = "quran_screen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> tabs = [
    QuranScreen(),
    const HadithScreen(),
    const SebihaScreen(),
    const RadioScreen(),
    const SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              Theme.of(context).colorScheme.brightness == Brightness.dark
                  ? "assets/images/dark_bg.png"
                  : "assets/images/bg3.png",
              fit: BoxFit.fill,
            ),
          ),
          Scaffold(
            appBar: AppBar(
              title: Text(
                AppLocalizations.of(context)!.appTitle,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
            ),
            body: tabs[index],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,
              onTap: (int value) {
                index = value;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/quran.png")),
                  label: AppLocalizations.of(context)!.quarn,
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                BottomNavigationBarItem(
                  icon:
                      const ImageIcon(AssetImage("assets/images/ahadeth.png")),
                  label: AppLocalizations.of(context)!.hadith,
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: AppLocalizations.of(context)!.sebha,
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/radio.png")),
                  label: AppLocalizations.of(context)!.radio,
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.settings),
                  label: "Settings",
                  backgroundColor: Theme.of(context).primaryColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
