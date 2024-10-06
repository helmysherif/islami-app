import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/settings_provider.dart';
class SebihaScreen extends StatefulWidget {
  const SebihaScreen({super.key});
  @override
  State<SebihaScreen> createState() => _SebihaScreenState();
}
class _SebihaScreenState extends State<SebihaScreen> {
  int index = 0;
  List<String> sebihaNames = ['سبحان الله' , 'الحمد لله' , 'لا إله إلا الله' , 'الله أكبر' , 'لا حول ولا قوه إلا بالله'];
  int currentSebihaIndex = 0;
  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of<SettingProvider>(context);
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 30),
          InkWell(
            onTap:(){
              index++;
              if(index > 33){
                index = 0;
                currentSebihaIndex++;
                if(currentSebihaIndex >= sebihaNames.length){
                  currentSebihaIndex = 0;
                }
              }
              setState(() {});
            },
            child: Image.asset(
                provider.themeMode == ThemeMode.light ? "assets/images/Group 8.png" : "assets/images/sebha_dark.png"
            )
          ),
          const SizedBox(height: 30),
          Text("عدد التسبيحات" , style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.secondary
          )),
          const SizedBox(height: 20),
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).primaryColor
            ),
            child: Center(
              child: Text(
                "$index",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: provider.themeMode == ThemeMode.light ? Colors.black : Colors.white,
                  fontSize: 25
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            width: 200,
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).primaryColor
            ),
            child: Center(
              child: Text(
                sebihaNames[currentSebihaIndex],
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.white,
                  fontSize: 25
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
