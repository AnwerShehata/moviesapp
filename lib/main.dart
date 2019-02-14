import 'package:flutter/material.dart';
import 'package:moviesapp/TabBar/My_TabBarView.dart';
import 'package:moviesapp/Details/DetailsSeries.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,


    home: new My_TabBarView(),
//    home: new DetailsSeries(),

    );
  }
}
