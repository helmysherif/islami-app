import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/providers/hadith_provider.dart';
import 'package:islami_app/screens/hadith_details.dart';
import 'package:islami_app/screens/hadith_model.dart';
import 'package:provider/provider.dart';
class HadithScreen extends StatelessWidget {
  HadithScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HadithProvider()..loadHadithFile(),
      builder: (context , child){
        HadithProvider provider = Provider.of<HadithProvider>(context);
        return Center(
          child: Column(
            children: [
              Image.asset("assets/images/hadeth_icon.png"),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context , index) => Divider(
                    color: Theme.of(context).colorScheme.secondary,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    height:15,
                  ),
                  itemBuilder: (context , index){
                    return InkWell(
                      onTap: (){
                        Navigator.pushNamed(
                            context,
                            HadithDetails.routeName,
                            arguments: provider.allhadith[index]
                        );
                      },
                      child: Text(
                        provider.allhadith[index].title,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    );
                  },
                  itemCount: provider.allhadith.length,
                ),
              ),
            ],
          ),
        );
      }
    );
  }

}