import 'package:flutter/material.dart';

import '../Tools/app_Colors.dart';

class DetailsSeries extends StatefulWidget {
  final String name;
  final String description;
  final String imagUrl;
  const DetailsSeries({Key key, this.name, this.description, this.imagUrl}) : super(key: key);
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<DetailsSeries> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: "Cairo"),
      home:  Directionality(textDirection: TextDirection.rtl,
        child: new Scaffold(

            body:Container(
              child: Column(
                children: <Widget>[

                  new Container(
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                          image: NetworkImage(widget.imagUrl))
                    ),
                  ),

                  new ExpansionTile(
                    title: Text(widget.name ,style: TextStyle(color: Colors.black),),
                    backgroundColor: Colors.deepPurple.shade400,
                    children: <Widget>[
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10), child: Text(widget.description,style: TextStyle(fontSize: 11 ,color: Colors.white),)),
                            new Divider(),
                            Padding(padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 0), child: Text("بطولة ",style: TextStyle(fontSize: 18 ,color: anColor4),)),
                            new Container(
                              height: 100,
                              child: ListView(
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  _itemsMovies(name:"Anwer",imag: "https://images.pexels.com/photos/736716/pexels-photo-736716.jpeg"),
                                  _itemsMovies(name: "Ali",imag: "https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg"),
                                  _itemsMovies(name: "Ahmed",imag: "https://images.pexels.com/photos/1138903/pexels-photo-1138903.jpeg"),
                                  _itemsMovies(name: "Gmail",imag: "https://images.pexels.com/photos/532220/pexels-photo-532220.jpeg"),
                                  _itemsMovies(name: "Nor",imag: "https://images.pexels.com/photos/1516680/pexels-photo-1516680.jpeg"),
                                ],
                              )
                            )
                          ],
                        ),
                      )
                    ],
                  ),

                  new Expanded(
                    child: Container(
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      children: <Widget>[
                        buildPadding(name: " الحلقة الاولي "),
                        buildPadding(name: "الحلقة الثانية "),
                        buildPadding(name: "الحلقة الثالثة"),
                        buildPadding(name: "الحلقة الرابعة "),
                        buildPadding(name: "الحلقة الخامسة "),
                        buildPadding(name: "الحلقة السادسة "),
                        buildPadding(name: "الحلقة السابعة "),
                        buildPadding(name: "الحلقة الثامنة "),
                        buildPadding(name: "الحلقة التاسعة "),
                        buildPadding(name: "الحلقة العاشرة "),
                      ],),
                  ))

                ],
              ),
            )

        ),
      ),
    );
  }

  Padding buildPadding({
    String name ,
}) {
    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Material(
                        elevation: 1,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 70,
                          child: Row(
                            children: <Widget>[

                              new Expanded(flex:6,child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(10) ,bottomRight: Radius.circular(10))
                                ),
                                child: Center(child: Text(name),)
                              )),

                              new Expanded(flex: 2,child: Container(
                                decoration: BoxDecoration(
                                  color:Colors.deepPurple.shade100,
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10) ,bottomLeft: Radius.circular(10))
                                ),
                                child: Center(
                                  child: InkWell(onTap: (){print("Play");},
                                      child: Icon(Icons.play_circle_filled,size: 60,color: Colors.deepPurple,)),),
                              )),

                            ],
                          ),
                        ),
                      ),
                    );
  }

  Padding _NmeSection({
    String nameSection : "",
    VoidCallback onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(nameSection , style: TextStyle(fontSize: 20),),
          IconButton(icon: Icon(Icons.more_horiz), onPressed: onPressed)
        ],
      ),
    );
  }

  GestureDetector _itemsMovies({
    String name : "Name",
    String imag : "Name",
    GestureTapCallback  onTapp,
  }) {
    return GestureDetector(
      onTap: onTapp,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: new Container(
          width: 70,
          child: Column(
            children: <Widget>[
              new Container(
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(imag))
                ),
              ),
              new Text(name, style: TextStyle(color: Colors.white,),)
            ],
          ),
        ),
      ),
    );
  }



}