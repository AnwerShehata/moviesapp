import 'package:flutter/material.dart';
import 'package:moviesapp/TabBar/TabBar_Home.dart' as one;
import 'package:moviesapp/TabBar/TabBar_Series.dart' as two;
import 'package:moviesapp/TabBar/TabBar_Sections.dart' as four;


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
          title: new Text("توب سينما" ,style: TextStyle(color: Colors.amber),),
          // هنا اكواد تاب بار
          // هنا اكواد تاب بار
          bottom: new TabBar(
            isScrollable: false,
            controller: controller,
            indicatorColor: Colors.amber,
            tabs: <Widget>[
              new Tab(text: "الرئيسية"),
              new Tab(text: "مسلسلات",),
              new Tab(text: "افلام",),
            ],
          ),

          //---
        ),



        // هنا يتم استدعاء الصفحات التم تظهر في كل تاب
        body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new one.TabBar_Home(),
            new two.TabBar_Series(),
            new four.TabBar_Sections(),
          ],
        ),





      ),
    );
  }
}