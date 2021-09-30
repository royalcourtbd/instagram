import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/bottom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  List profileImage = [
    'images/Selena_Gomez.png',
    'images/obama.png',
    'images/Jennifer_Lopez.png',
    'images/Justin-Bieber.jpg',
    'images/Grace_Kelly.png',
    'images/Ariana_Grande.jpg',
    'images/Dwayne_Johnson.png'
  ];
  List profileName = [
    'Selena\nGomez',
    'Obama',
    'Jennifer\nLopez',
    'Justin\nBieber',
    'Grace\nKelly',
    'Ariana\nGrande',
    'Dwayne\nJohnson'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CreateABottomNavigationBar(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 123,
        bottomOpacity: 0.0,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 14.0, top: 10.0),
          child: Image(
            image: AssetImage(
              'images/logo.png',
            ),
            height: 25,
            width: 60.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
              size: 30.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border,
              color: Colors.black,
              size: 30.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.facebookMessenger,
              color: Colors.black,
              size: 30.0,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          //chat head start
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Container(
              //color: Colors.blue,
              width: double.infinity,
              height: 80.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: profileImage.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5, right: 8),
                    child: Container(
                      //padding: EdgeInsets.only(left: 5.0),
                      height: 70,
                      width: 70,
                      //color: Colors.black,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35.0),
                        border: Border.all(
                          width: 1,
                          color: Colors
                              .amber, //kHintColor, so this should be changed?
                        ),
                        image: DecorationImage(
                          image: AssetImage(profileImage[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      //child: Image.asset(),
                    ),
                  );
                },
              ),
            ),
          ),
          Divider(
            height: 3,
            //color: Colors.black,
            thickness: 2,
          ),
          // SizedBox(
          //   height: 3,
          // ),
          //chat head end
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Row(
              children: [
                Container(
                  //color: Colors.amber,
                  height: 50,
                  width: 250,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/obama.png'),
                        radius: 22,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'barack obama',
                        style: GoogleFonts.inter(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  alignment: Alignment.centerRight,
                  //color: Colors.black,
                  height: 50,
                  width: 128.7,
                  child: Icon(
                    Icons.more_horiz,
                    size: 35.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Image(
            image: AssetImage('images/thor.jpg'),
          ),
          Row(
            children: [
              Container(
                //color: Colors.amber,
                height: 50,
                width: 250,
                child: Row(
                  children: [
                    SizedBox(
                      width: 11,
                    ),
                    Icon(
                      FontAwesomeIcons.heart,
                      size: 25.0,
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Icon(
                      FontAwesomeIcons.comment,
                      size: 25.0,
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Icon(
                      FontAwesomeIcons.paperPlane,
                      size: 25.0,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10),
                alignment: Alignment.centerRight,
                height: 50,
                width: 128.7,
                child: Icon(
                  FontAwesomeIcons.bookmark,
                  size: 25.0,
                ),
              ),

              //BottomNavigationBar(items: [BottomNavigationBarItem(icon: Icon(Icons.home, ),label: 'Home')])
            ],
          ),
          SizedBox(height: 5,),
          Divider(
            height: 3,
            //color: Colors.black,
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Row(
              children: [
                Container(
                  //color: Colors.amber,
                  height: 50,
                  width: 250,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/Selena_Gomez.png'),
                        radius: 22,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Selena Gomez',
                        style: GoogleFonts.inter(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  alignment: Alignment.centerRight,
                  //color: Colors.black,
                  height: 50,
                  width: 128.7,
                  child: Icon(
                    Icons.more_horiz,
                    size: 35.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Image(
            image: AssetImage('images/hd.jpg'),
          ),
          Row(
            children: [
              Container(
                //color: Colors.amber,
                height: 50,
                width: 250,
                child: Row(
                  children: [
                    SizedBox(
                      width: 11,
                    ),
                    Icon(
                      FontAwesomeIcons.heart,
                      size: 25.0,
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Icon(
                      FontAwesomeIcons.comment,
                      size: 25.0,
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Icon(
                      FontAwesomeIcons.paperPlane,
                      size: 25.0,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10),
                alignment: Alignment.centerRight,
                height: 50,
                width: 128.7,
                child: Icon(
                  FontAwesomeIcons.bookmark,
                  size: 25.0,
                ),
              ),

              //BottomNavigationBar(items: [BottomNavigationBarItem(icon: Icon(Icons.home, ),label: 'Home')])
            ],
          ),

        ],
      ),
    );
  }
}
