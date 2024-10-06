import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/screens/hadith_model.dart';

class HadithDetails extends StatelessWidget {
  static const String routeName = "hadith-details";

  const HadithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadithModel;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  Theme.of(context).colorScheme.brightness == Brightness.dark
                      ? "assets/images/dark_bg.png"
                      : "assets/images/bg3.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: SingleChildScrollView(
          child: Card(
            elevation: 12,
            margin: const EdgeInsets.all(12),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22),
                side: BorderSide(color: Theme.of(context).primaryColor)),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(args.content,
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.elMessiri(
                      fontSize: 23, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
          ),
        ),
      ),
    );
  }
}
