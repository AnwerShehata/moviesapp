import 'package:flutter/material.dart';

import '../Tools/app_Colors.dart';
import '../Details/DetailsSeries.dart';
import '../Model/MyData_SeriesDrama.dart';
import '../Model/MyData_SeriesTarky.dart';



class TabBar_Series extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<TabBar_Series> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
//      backgroundColor:anColor2,


    body: Container(child: Column(
      children: <Widget>[

        new Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: 100,
            decoration: BoxDecoration(
                color: anColor2,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35) ,bottomRight: Radius.circular(35))
            ),
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Center(child: Row(
                  children: <Widget>[
                    _TypeSeries(colors1: Color(0xFFFDC830) ,colors2: Color(0xFFF37335),name: " تركي"),
                    _TypeSeries(colors1: Color(0xFF00F260) ,colors2: Color(0xFF0575E6),name: "  رومنسي"),
                    _TypeSeries(colors1: Color(0xFFFDC830) ,colors2: Color(0xFFF37335),name: " دراما"),
                    _TypeSeries(colors1: Color(0xFF00F260) ,colors2: Color(0xFF0575E6),name: " مصري"),
                    _TypeSeries(colors1: Color(0xFFFDC830) ,colors2: Color(0xFFF37335),name: " كوميديا"),
                  ],
                ),)
              ],
            )
        ),
        
        new Expanded(child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[



            SizedBox(height: 30),
            _NmeSection(nameSection: "مسلسلات مصرية "),
            new Container( height: 180,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: dataSeriesDrama.length,
                    itemBuilder: (context , postion){
                      return _ItemSeries(
                          name: dataSeriesDrama[postion].name,
                          image: dataSeriesDrama[postion].imagUrl,
                          number: dataSeriesDrama[postion].episodes,
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsSeries(
                            name: dataSeriesDrama[postion].name,
                            imagUrl: dataSeriesDrama[postion].imagUrl,
                            description: dataSeriesDrama[postion].description,
                          )),);}
                      );
                    })
            ),





            SizedBox(height: 30),
            _NmeSection(nameSection: "مسلسلات خليجية"),
            new Container( height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: dataSeriesTarky.length,
                  itemBuilder: (context , postion){
                    return _ItemSeries(
                      name: dataSeriesTarky[postion].name,
                      image: dataSeriesTarky[postion].imagUrl,
                      number: dataSeriesTarky[postion].episodes,
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsSeries(
                        name: dataSeriesTarky[postion].name,
                        imagUrl: dataSeriesTarky[postion].imagUrl,
                        description: dataSeriesTarky[postion].description,
                      )),);}
                    );
                  })
            ),







          ],
        ))
        
      ],
    ),),


    );
  }

  GestureDetector _ItemSeries(
  {
    String name ="اسم المسلسل" ,
    String number ="عدد الحلقات : 30 " ,
    String image ='',
    GestureTapCallback onTap ,
  }) {
    return GestureDetector(
              onTap: onTap,
              child: new Container(
              padding: EdgeInsets.only(left: 5 ,right: 5),
              child: Stack(
              children: <Widget>[
              new Container(height: 180, width: 290,
              decoration: BoxDecoration(
              image: DecorationImage(fit: BoxFit.fill,
              image: NetworkImage(image)),
              color: Colors.grey.shade300, borderRadius: BorderRadius.circular(10)),
              ),

              Positioned(
              bottom: 0,
              child: Container(
              decoration: BoxDecoration(
              color: Colors.black.withAlpha(120),
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(10) ,bottomLeft: Radius.circular(10))
              ),
              width: 290, height: 50,
              child: Center(
              child: ListTile(
              trailing: Text(name ,style: TextStyle(color: Colors.white),),
              title: Text(number ,style: TextStyle(color: Colors.amber,fontSize: 15),),
              ),
              )
              )
              )

              ],
              ),
              ),
              );
  }


  Padding _TypeSeries({
    String name = "رومانسي",
    Color colors1: Colors.amber ,
    Color colors2: Colors.pink ,
  }) {
    return Padding(
                    padding: const EdgeInsets.only(right: 6),
                    child: new Container(height: 70, width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(colors: [colors1 , colors2 ,] )
                      ),
                      child: Align(alignment: Alignment.center,child: Text(name,style: TextStyle(fontSize: 20 ),)),
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
          Text(nameSection , style: TextStyle(fontSize: 20 ,color: anColor3),),
          IconButton(icon: Icon(Icons.arrow_forward_ios,color:anColor3), onPressed: onPressed),
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
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: new Container(width: MediaQuery.of(context).size.width-80,
          child: Column(
            children: <Widget>[
              new Container(height: 180,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(fit: BoxFit.fill, image: NetworkImage(imag))
                ),
              ),
              SizedBox(height:10),
              new Text(name, style: TextStyle(color: anColor2),)
            ],
          ),
        ),
      ),
    );
  }


}