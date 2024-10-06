import 'package:flutter/material.dart';
import 'package:islami_app/screens/showTheme_bottomSheet.dart';
import 'package:islami_app/screens/show_language_bottom_sheet.dart';
import 'package:provider/provider.dart';

import '../providers/settings_provider.dart';
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});
  static const String routeName = "settings";
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}
class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of<SettingProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20 , horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Theming"),
          const SizedBox(height:5),
          InkWell(
            onTap: (){
              showThemeSheet();
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  provider.themeMode == ThemeMode.light ? "Light" : "Dark",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 22,
                    fontWeight: FontWeight.w300
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height:35),
          Text(provider.language == 'en' ? "Language" : "اللغه"),
          const SizedBox(height:5),
          InkWell(
            onTap: (){
              showLanguageSheet();
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  provider.language == 'en' ? "English" : "عربي",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 22,
                      fontWeight: FontWeight.w300
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  void showThemeSheet(){
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context){
        return const ShowThemeBottomSheet();
      }
    );
  }
  void showLanguageSheet(){
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context){
          return const ShowLanguageBottomSheet();
        }
    );
  }
}
