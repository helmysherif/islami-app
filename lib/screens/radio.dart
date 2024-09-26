import 'package:flutter/material.dart';
class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/radio_icon.png"),
        const Text("إذاعة القرآن الكريم"),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.arrow_left,
              size: 60,
              color: Theme.of(context).primaryColor
            ),
            Icon(
              Icons.play_arrow,
              size: 70,
              color: Theme.of(context).primaryColor
            ),
            Icon(
              Icons.arrow_right,
              size: 60,
              color: Theme.of(context).primaryColor
            )
          ],
        )
      ],
    );
  }
}