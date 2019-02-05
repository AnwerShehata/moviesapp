import 'package:flutter/material.dart';
import 'package:moviesapp/TabBar/TabBar_one.dart' as one;
import 'package:moviesapp/TabBar/TabBar_two.dart' as two;
import 'package:moviesapp/TabBar/TabBar_three.dart' as three;
import 'package:moviesapp/TabBar/TabBar_four.dart' as four;


class My_TabBarView extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_TabBarView> with SingleTickerProviderStateMixin{

  // الدوال الخاصة بالتحكم فيTabBar  --------------------------------------
  TabController controller;
  @override
  void initState() {
    controller =new TabController(length: 8, vsync: this); // هنا يتم كتابه  عدد التي سوف تظهر   TabBar
    super.initState();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  // الدوال الخاصة بالتحكم فيTabBar  --------------------------------------


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(

        appBar:  new AppBar(
          backgroundColor: Color(0xFF1d0148),
          centerTitle: true,
          elevation: 0,
          title: new Text("Movies App" ,style: TextStyle(color: Colors.amber),),
          // هنا اكواد تاب بار
          // هنا اكواد تاب بار
          bottom: new TabBar(
            isScrollable: true,
            controller: controller,
            indicatorColor: Colors.amber,
            tabs: <Widget>[
              new Tab(text: "Movies",),
              new Tab(text: "Series",),
              new Tab(text: "Threesadsa"),
              new Tab(text: "sleepasdasdad",),
            ],
          ),

          //---
        ),



        // هنا يتم استدعاء الصفحات التم تظهر في كل تاب
        body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new one.TabBar_one(),
            new two.TabBar_two(),
            new three.TabBar_three(),
            new four.TabBar_four(),
          ],
        ),





      ),
    );
  }
}