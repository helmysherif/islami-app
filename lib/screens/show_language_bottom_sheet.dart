import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/settings_provider.dart';

class ShowLanguageBottomSheet extends StatelessWidget {
  const ShowLanguageBottomSheet({super.key});

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
              onTap: () {
                provider.changeLanguage("en");
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Text(
                    "English",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: provider.language == 'en'
                            ? Theme.of(context).colorScheme.secondary
                            : provider.themeMode == ThemeMode.light
                                ? Colors.black54
                                : Colors.white),
                  ),
                  const Spacer(),
                  provider.language == 'en'
                      ? Icon(
                          Icons.check,
                          color: provider.language == 'en'
                              ? Theme.of(context).colorScheme.secondary
                              : provider.themeMode == ThemeMode.light
                                  ? Colors.black54
                                  : Colors.white,
                          size: 30,
                        )
                      : Container()
                ],
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                provider.changeLanguage("ar");
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Text(
                    "Arabic",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: provider.language == 'ar'
                              ? Theme.of(context).colorScheme.secondary
                              : provider.themeMode == ThemeMode.light
                                  ? Colors.black54
                                  : Colors.white,
                        ),
                  ),
                  const Spacer(),
                  provider.language == 'ar'
                      ? Icon(
                          Icons.check,
                          color: provider.language == 'ar'
                              ? Theme.of(context).colorScheme.secondary
                              : provider.themeMode == ThemeMode.light
                                  ? Colors.black54
                                  : Colors.white,
                          size: 30,
                        )
                      : Container()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
