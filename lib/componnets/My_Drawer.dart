import 'package:flutter/material.dart';

class My_Drawer extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_Drawer> {

  double FontSize = 20;

  @override
  Widget build(BuildContext context) {
    return new Drawer(

      child: ListView(
        children: <Widget>[

          new DrawerHeader(
              child: Text("anwershehata@gmail.com")
          ),

          new ListTile(
            onTap: (){},
            title: Text(" المفضلة " ,style: TextStyle(fontSize: FontSize),),
            leading: new Icon(Icons.favorite),
          ),

          new ListTile(
            onTap: (){},
            title: Text(" طلب افلام  " ,style: TextStyle(fontSize: FontSize),),
            leading: new Icon(Icons.favorite),
          ),

          new ListTile(
            onTap: (){},
            title: Text("الاعدادات  ",style: TextStyle(fontSize: FontSize),),
            leading: new Icon(Icons.favorite),
          ),


          new ListTile(
            onTap: (){},
            title: Text("اختر اللغة   " ,style: TextStyle(fontSize: FontSize),),
            leading: new Icon(Icons.favorite),
          ),

          Divider(),

          new ListTile(
            onTap: (){},
            title: Text("تسجيل خروج",style: TextStyle(fontSize: FontSize),),
            trailing: new Icon(Icons.call_missed_outgoing),
          ),






        ],
      ),
    );
  }
}