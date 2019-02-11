  import 'package:flutter/material.dart';
import 'package:moviesapp/Tools/app_Colors.dart';
import 'package:moviesapp/Tools/app_tools.dart';



  class My_MoveDetails extends StatefulWidget {
    final String name;
    final String description;
    final String imagUrl;
    final String videoUrl;

    const My_MoveDetails({Key key, this.name, this.description, this.imagUrl, this.videoUrl}) : super(key: key);

    _BirdState createState() => new _BirdState();
  }

  class _BirdState extends State<My_MoveDetails> {

    @override
    Widget build(BuildContext context) {
      return new MaterialApp(
        debugShowCheckedModeBanner: false,
  //      theme: new ThemeData(fontFamily: "Cairo"),
        home:  new Scaffold(



          //----------Body-------------------------
          body: Container(
          decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.fitHeight,
              colorFilter: new ColorFilter.mode(Colors.white.withOpacity(0.9), BlendMode.xor),
              image: NetworkImage("")),
        ),

          child: Column(
            children: <Widget>[

              //=====================هنا الكود الخاض بعرض الصورة  والدائرة
              new Stack(
                children: <Widget>[

                  ClipPath(
                    child: new Container(
                      height: MediaQuery.of(context).size.height-235,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                    ),
                    clipper: BottomWaveClipper2(), // يتم استدعاء الكلاس الذي يحمل  مقاسات الزاوية
                  ),


                  // ====== هنا كود المسئول عن عمل الزاوية التي تحت الصورة
                  ClipPath(
                    child: new Container(
  //                  height: 600,
                      height: MediaQuery.of(context).size.height-240,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage("${widget.imagUrl}")
                          )
                      ),
                    ),
                    clipper: BottomWaveClipper(), // يتم استدعاء الكلاس الذي يحمل  مقاسات الزاوية
                  ),

                  Positioned(
                    bottom: 0,
                    right: 40,
                    child: GestureDetector(onTap: (){},
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Icon(Icons.play_circle_filled ,size: 70, color: Colors.red,)),
                    ),
                  )
                ],
              ),

              //============== هنا الكود الخاض بايقونات المشاركة والتقيم والمفضلة
              SizedBox(height: 10,),
              new Container(
  //                color: Colors.red,
                height: 50,
                width: MediaQuery.of(context).size.width-200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    _IconsButoon(
                        color1: Colors.purple.shade100.withOpacity(0.3),
                        color2: Colors.purple.shade300.withOpacity(0.2),
                        coloricon: Colors.purple.shade800,
                        icon: Icons.star
                    ),
                    _IconsButoon(
                        color1: Colors.blue.shade100 .withOpacity(0.3),
                        color2: Colors.blue.shade300.withOpacity(0.2),
                        coloricon: Colors.blue.shade800,
                        icon: Icons.favorite
                    ),
                    _IconsButoon(
                        color1: Colors.greenAccent.shade100 .withOpacity(0.3),
                        color2: Colors.green.shade300 .withOpacity(0.2),
                        coloricon: Colors.green.shade800,
                        icon: Icons.share
                    ),



                  ],
                ),
              ),

              //===================== هنا الكود الخاص باسم الفيلم والوصف
              new Container(
  //                alignment: AlignmentDirectional.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text("${widget.name}",textAlign: TextAlign.center ,style: TextStyle(fontSize: 30 ,fontFamily: "Cairo" , color: Colors.red)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Center(
                          child: new Text("${widget.description}",textAlign: TextAlign.center,style: TextStyle(fontSize: 12 ,fontWeight: FontWeight.w400), )),
                    ),
                  ],
                ),
              ),
            ],
          )
      ) ,
        ),
      );
    }

    GestureDetector _IconsButoon({
      IconData icon : Icons.add,
      Color color1 :Colors.red,
      Color color2 :Colors.amberAccent,
      Color coloricon :Colors.amberAccent,
      GestureTapCallback onTap ,
      }) {
      return GestureDetector(onTap: onTap,
                      child: Stack(
                      children: <Widget>[
                      Container(height: 50, width: 50,
                      decoration: BoxDecoration(
                      color:color1,
                      borderRadius: BorderRadius.circular(50)
                      ),
                      ),
                      Positioned(
                        right:5,  top: 5,
                      child: Container(
                      height: 40, width: 40,
                      decoration: BoxDecoration(
                      color: color2,
                      borderRadius: BorderRadius.circular(50)
                      ),
                      child: Icon(icon , color: coloricon),
                      ),),],),);
    }


  }