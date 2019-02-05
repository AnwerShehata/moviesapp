import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:moviesapp/Tools/app_Colors.dart';

class Poster extends StatefulWidget {
  final String name;
  final String imageurl;
  const Poster({Key key, this.name, this.imageurl}) : super(key: key);
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Poster> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(
        backgroundColor:anColor2,

        appBar: AppBar(
          title: Text(widget.name ,style: TextStyle(color:Colors.white),),
          backgroundColor: anColor2,
          centerTitle: true,
          leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){Navigator.pop(context);}),
        ),


      body:Container(
        color: anColor2,
        child: Center(
          child: PhotoView(
            imageProvider: NetworkImage(widget.imageurl),
          ),),
      )

      ),
    );
  }
}