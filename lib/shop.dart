import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/bottom_navigation_bar.dart';
import 'package:instagram/test_grid.dart';
import 'package:instagram/widget/shop_widget.dart';

class ShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CreateABottomNavigationBar(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        //toolbarOpacity: 0.0,
        automaticallyImplyLeading: false,

        title: Text(
          'Shop',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_shopping_cart,size: 30,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,size: 30,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
            child: Container(
              alignment: Alignment.centerLeft,
              height: 45,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(28.0),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.search,
                    size: 30,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Search',
                    style: GoogleFonts.inter(
                        fontSize: 19, fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
          ),
          TestGrid(),
          MainProducts(),


        ],
      ),
    );
  }
}
