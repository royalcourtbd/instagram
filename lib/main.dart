import 'package:flutter/material.dart';
import 'package:instagram/home_page.dart';
import 'package:instagram/shop.dart';
import 'package:instagram/test_grid.dart';
import 'package:instagram/test_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}