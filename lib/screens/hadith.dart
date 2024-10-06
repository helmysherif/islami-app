import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/screens/hadith_details.dart';
import 'package:islami_app/screens/hadith_model.dart';
class HadithScreen extends StatefulWidget {
  const HadithScreen({super.key});
  @override
  State<HadithScreen> createState() => _HadithScreenState();
}
class _HadithScreenState extends State<HadithScreen> {
  List<HadithModel> allhadith = [];
  @override
  Widget build(BuildContext context) {
    if(allhadith.isEmpty){
      loadHadithFile();
    }
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
                      arguments: allhadith[index]
                    );
                  },
                  child: Text(
                    allhadith[index].title,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                );
              },
              itemCount: allhadith.length,
            ),
          ),
        ],
      ),
    );
  }
  void loadHadithFile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((value){
      List<String> hadithContent = value.split('#');
      for(int i = 0;i < hadithContent.length;i++){
        int lastIndexOfFirstLine = hadithContent[i].trim().indexOf("\n");
        String title = hadithContent[i].trim().substring(0 , lastIndexOfFirstLine);
        String content = hadithContent[i].trim().substring(lastIndexOfFirstLine + 1);
        HadithModel hadithModel = HadithModel(title: title, content: content);
        allhadith.add(hadithModel);
      }
      setState(() {});
    }).catchError((error){});
  }
}