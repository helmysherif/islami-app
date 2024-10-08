import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import '../screens/hadith_model.dart';
class HadithProvider extends ChangeNotifier{
  List<HadithModel> allhadith = [];
  void loadHadithFile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((value){
      List<String> hadithContent = value.split('#');
      for(int i = 0;i < hadithContent.length;i++){
        int lastIndexOfFirstLine = hadithContent[i].trim().indexOf("\n");
        String title = hadithContent[i].trim().substring(0 , lastIndexOfFirstLine);
        String content = hadithContent[i].trim().substring(lastIndexOfFirstLine + 1);
        HadithModel hadithModel = HadithModel(title: title, content: content);
        allhadith.add(hadithModel);
        notifyListeners();
      }
    }).catchError((error){});
  }
}