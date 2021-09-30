import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestGrid extends StatelessWidget {
  List smallImage = [
    'images/Ariana_Grande.jpg',
    'images/insta_logo.png',
  ];List smallText = [
    'Browse Shops',
    'Editor\'s Pick',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 80,
        width: 300,
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.only(left: 16.0,right: 16.0,top: 8,bottom: 8),
          itemCount: 2,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 20,
            childAspectRatio: 3,
          ),
          itemBuilder: (context, index) {
            return Container(
              // color: Colors.grey,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(13.0),
              ),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  foregroundImage: AssetImage(
                    smallImage[index],
                  ),
                  radius: 22,
                ),
                Text(
                  smallText[index],
                  style: GoogleFonts.inter(
                      fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            );
          },
        ),
      ),
    );
  }
}
