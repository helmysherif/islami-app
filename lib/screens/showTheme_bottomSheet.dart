import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/settings_provider.dart';
class ShowThemeBottomSheet extends StatelessWidget {
  const ShowThemeBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            InkWell(
              onTap: (){
                provider.changeTheme(ThemeMode.light);
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Text(
                    "Light",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: provider.themeMode == ThemeMode.light ? Theme.of(context).primaryColor : Colors.white
                    ),
                  ),
                  const Spacer(),
                  provider.themeMode == ThemeMode.light ? Icon(
                    Icons.check,
                    color: Theme.of(context).primaryColor,
                    size: 30,
                  ) : Container()
                ],
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: (){
                provider.changeTheme(ThemeMode.dark);
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Text(
                    "Dark",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: provider.themeMode == ThemeMode.dark ? Theme.of(context).colorScheme.secondary : Colors.black54
                    ),
                  ),
                  const Spacer(),
                  provider.themeMode == ThemeMode.dark ? Icon(
                    Icons.check,
                    color: Theme.of(context).colorScheme.secondary,
                    size: 30,
                  ) : Container()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
