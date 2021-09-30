import 'package:flutter/material.dart';

class TestHomePage extends StatelessWidget {
  List image = [
    'images/Selena_Gomez.png',
    'images/Selena_Gomez.png',
    'images/Selena_Gomez.png',
    'images/Selena_Gomez.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: image.length,itemBuilder: (context, index) {
        return Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(image[index]),
            )
          ],
        );
      },),
    );
  }
}
