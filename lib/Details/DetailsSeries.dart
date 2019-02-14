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
      home:  new Scaffold(

          body:Container(
            child: Column(
              children: <Widget>[

                new Container(
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
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
                                _itemsMovies(name:"Anwer",imag: "https://cdn.pixabay.com/photo/2017/12/12/05/01/portrait-3013924__480.jpg"),
                                _itemsMovies(name: "Ali",imag: "https://cdn.pixabay.com/photo/2016/03/09/10/23/model-1246028__480.jpg"),
                                _itemsMovies(name: "Ahmed",imag: "https://cdn.pixabay.com/photo/2016/05/23/23/32/human-1411499__480.jpg"),
                                _itemsMovies(name: "Gmail",imag: "https://cdn.pixabay.com/photo/2017/01/14/10/57/woman-1979272__480.jpg"),
                                _itemsMovies(name: "Nor",imag: "https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358__480.jpg"),
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

                      buildPadding(),
                      buildPadding(),
                      buildPadding(),
                      buildPadding(),
                      buildPadding(),
                      buildPadding(),
                      buildPadding(),
                      buildPadding(),
                      buildPadding(),
                      buildPadding(),

                    ],),
                ))

              ],
            ),
          )

      ),
    );
  }

  Padding buildPadding() {
    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Material(
                        elevation: 1,
//                        shadowColor: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 70,
                          child: Row(
                            children: <Widget>[

                              new Expanded(flex:6,child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10) ,bottomLeft: Radius.circular(10))
                                ),
                                child: Center(child: Text("الحلقة الرابعة والعشرون "),)
                              )),

                              new Expanded(flex: 2,child: Container(
                                decoration: BoxDecoration(
                                  color:Colors.deepPurple.shade100,
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(10) ,bottomRight: Radius.circular(10))
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