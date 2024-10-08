import 'package:flutter/material.dart';
import 'package:islami_app/providers/sura_details_provider.dart';
import 'package:islami_app/screens/sura_details_args.dart';
import 'package:provider/provider.dart';
class SuraDetails extends StatelessWidget {
  static const String routeName = "sura-details";
  const SuraDetails({super.key});
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    return ChangeNotifierProvider(
      create: (context) => SuraDetailsProvider(),
      builder: (context , child){
        SuraDetailsProvider provider = Provider.of<SuraDetailsProvider>(context)..loadFile(args.index);
        return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    Theme.of(context).colorScheme.brightness == Brightness.dark
                        ? "assets/images/dark_bg.png"
                        : "assets/images/bg3.png",
                  ),
                  fit: BoxFit.fill
              )
          ),
          child: Scaffold(
              appBar: AppBar(
                title: Text(
                  args.suraName,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              body:provider.verses.isEmpty ? Center(child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              )) : ListView.separated(
                  itemBuilder:(context , index){
                    return Directionality(
                        textDirection: TextDirection.rtl,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:10),
                          child: Text(
                            "${provider.verses[index]}${index + 1}",
                            textAlign:TextAlign.center,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        )
                    );
                  },
                  separatorBuilder: (context , index) => Divider(
                      thickness: 2,
                      endIndent: 40,
                      indent: 40,
                      color: Theme.of(context).primaryColor
                  ) ,
                  itemCount:provider.verses.length
              )
          ),
        );
      },
    );
  }
}
