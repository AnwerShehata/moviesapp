import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:moviesapp/Tools/app_Colors.dart';
import 'package:moviesapp/Pages/Page_ActioMovies.dart';
import 'package:flutter_youtube/flutter_youtube.dart';

import '../PageDetails/MoveDetails_Action.dart';
import '../Model/MyData_MoviesِAction.dart';
import '../Pages/Page_EgyptMovies.dart';




class TabBar_one extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<TabBar_one> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      new Container(
        child: Column(
          children: <Widget>[


            //========== Container Slide CarouselSlider
            buildCarouselSlider(context),

            //========== Container ListView  horizontal
            //=== قسم افلام الاكشن
            SizedBox(height: 30),
            _NmeSection(nameSection: "Romantic Movies",
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Page_ActioMovies()),);}),
            new Container(
                height: 220,
                width: MediaQuery.of(context).size.width-8,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context ,postions){
                      return _itemsMovies(
                        imag: "${dataMoviesAction[postions].imagUrl}" ,
                        name: "${dataMoviesAction[postions].name.substring(0,10)}...",
                        onTapp:(){Navigator.push(context, MaterialPageRoute(builder: (context) => MoveDetails_Action(
                          name: dataMoviesAction[postions].name,
                          imagUrl:dataMoviesAction[postions].imagUrl ,
                          description: dataMoviesAction[postions].description,
                          videoUrl: dataMoviesAction[postions].videoUrl,
                        )),);},
                      );
                    })
            ),
            SizedBox(height: 20),

            //========== Name Sections and Button
            SizedBox(height: 40),
            new Stack(
              children: <Widget>[
                new Container(
                  width: MediaQuery.of(context).size.width-10,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(5),
                  ),
                ),

                Positioned(
                  top: 10, bottom: 10, right: 10, left: 10,
                  child: GestureDetector(onTap: (){print("play");},
                    child: Container(
                        decoration: BoxDecoration(
//                                  color: Colors.white,
                            borderRadius: BorderRadius.circular(60)
                        ),
                        child: Icon(Icons.play_circle_filled ,size: 60, color: Colors.red,)),
                  ),
                )

              ],
            ),



          ],
        ),
      )
    ],);

  }

  Container buildCarouselSlider(BuildContext context) {
    return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)
              ),
              gradient: LinearGradient(
                colors: [anColor2, anColor1],
                      begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
              ),
            ),
              height: 440,
              child: Center(
                child:CarouselSlider(
                  height: 380,
                  autoPlay: true,
                  items: <Widget>[
                    _buildContainer(context ,imagUrl: "https://image.tmdb.org/t/p/w1280/mo0FP1GxOFZT4UDde7RFDz5APXF.jpg"),
                    _buildContainer(context ,imagUrl: "https://image.tmdb.org/t/p/w1280/fw02ONlDhrYjTSZV8XO6hhU3ds3.jpg"),
                    _buildContainer(context ,imagUrl: "https://image.tmdb.org/t/p/w1280/tvmPiTShsfp4vSUBFsCHYaX9M7i.jpg"),
                    _buildContainer(context ,imagUrl: "https://image.tmdb.org/t/p/w1280/utH781EwjzzXQC6fZUO3cw8L5Ht.jpg"),
                    _buildContainer(context ,imagUrl: "https://image.tmdb.org/t/p/w1280/AiRfixFcfTkNbn2A73qVJPlpkUo.jpg"),
                    _buildContainer(context ,imagUrl: "https://image.tmdb.org/t/p/w1280/i91mfvFcPPlaegcbOyjGgiWfZzh.jpg"),
                    _buildContainer(context ,imagUrl: "https://image.tmdb.org/t/p/w1280/aWENxGrJmXmHvifG6x2aYnpovXI.jpg"),
                  ],
                ),
              )
          );
  }

  Container _buildContainer(BuildContext context ,{String imagUrl}) {
    return new Container(
      width: MediaQuery.of(context).size.width-100,
      decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imagUrl))
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
          Text(nameSection , style: TextStyle(fontSize: 20 ,color: anColor1),),
          IconButton(icon: Icon(Icons.more_horiz,color:anColor1), onPressed: onPressed)
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
        child: new Container(width: 128,
          child: Column(
            children: <Widget>[
              new Container(height: 180,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(imag))
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