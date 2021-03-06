      import 'package:flutter/material.dart';
      import 'package:moviesapp/Tools/app_Colors.dart';
      import 'package:moviesapp/componnets/Poster.dart';
      import 'package:moviesapp/componnets/Plyer.dart';

      import '../Details/Details_Horror.dart';
      import '../Pages/Page_Horror.dart';
      import '../Model/MyData_MoviesHorror.dart';

      class Details_Horror extends StatefulWidget {
        final String name;
        final String description;
        final String imagUrl;
        final String videoUrl;
    const Details_Horror({Key key, this.name, this.description, this.imagUrl, this.videoUrl}) : super(key: key);
        _BirdState createState() => new _BirdState();
      }

      class _BirdState extends State<Details_Horror> {

        @override
        Widget build(BuildContext context) {
          return new MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: new ThemeData(fontFamily: "Cairo"),
            home:  new Scaffold(
              backgroundColor: Colors.white,



            body:  Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[

                //=== هنا الكونتير الثابت الذي يحمل الصور الشفافة
                new Container(
                  height: 330,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [anColor2,anColor1],
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                      ),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          colorFilter: new ColorFilter.mode(anColor1.withAlpha(30), BlendMode.dstATop),
                          image: NetworkImage(widget.imagUrl)
                      )
                  ),
                ),


                //====== هنا السكرول الذي يحمل باقي البيانات
                new SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 260),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: new Stack(
                          children: <Widget>[

                            //====== هنا الكونتينر الرئيسي
                            new Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            width: MediaQuery.of(context).size.width,
                              child: Column(
                                children: <Widget>[

                                  // هنا الستاك الذي يحمل صور الفيلم وزر التشغيل والوصف وكل ما يتعلق بالفيلم
                                  new Stack(
                                    overflow: Overflow.visible,
                                    children: <Widget>[

                                      Material(
                                        elevation: 5,
                                        borderRadius: BorderRadius.circular(20),
                                        child: new Container(
                                          width: MediaQuery.of(context).size.width,
                                          child: Column(children: <Widget>[

                                            //====== هنا كونتينر زر التشغيل واسم الفيلم
                                            SizedBox(height: 10),
                                            _ButonPayandNameMoviesContainer(),

                                            //======وصف الفيلم
                                            _DescriptionBuil()

                                          ],
                                          ),
                                        ),
                                      ),

                                      //=====  هنا صورة الفيلم
                                      Positioned(
                                          top: -50,
                                          left: 20,
                                          child: GestureDetector(
                                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Poster(
                                              name: widget.name,
                                              imageurl: widget.imagUrl,
                                            )),);},
                                            child: Container(
                                              height: 170, width: 120,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color: Colors.amber,
                                                  image: DecorationImage(fit:BoxFit.fill,image: NetworkImage(widget.imagUrl))
                                              ),
                                            ),
                                          )),

                                    ],
                                  ),

                                ],
                              ),
                            )

                          ],
                        ),
                      ),


                      //========== Container ListView  horizontal
                      SizedBox(height: 30),
                      _NmeSection(nameSection: "المزيد من افلام الرعب",
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Page_Horror()),);}),
                      new Container(
                          height: 220,
                          width: MediaQuery.of(context).size.width-8,
                          child: ListView.builder(
                            reverse: true,
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context ,postions){
                                return _itemsMovies(
                                  imag: "${dataMoviHorror[postions].imagUrl}" ,
                                  name: "${dataMoviHorror[postions].name.substring(0,10)}...",
                                  onTapp:(){Navigator.push(context, MaterialPageRoute(builder: (context) => Details_Horror(
                                    name: dataMoviHorror[postions].name,
                                    imagUrl:dataMoviHorror[postions].imagUrl ,
                                    description: dataMoviHorror[postions].description,
                                    videoUrl: dataMoviHorror[postions].videoUrl,
                                  )),);},
                                );
                              })
                      ),
                      SizedBox(height: 20),

                    ],
                  ),
                ),
              ],
            ),



            ),
          );
        }




      Container _ButonPayandNameMoviesContainer() {
      return new Container(
      height: 120,
      child:Row(
      children: <Widget>[
      new Expanded(child: Container()),
      Expanded(
        child: Container(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //==== هنا ايقون تشغيل الفيلم
          GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Plyer(Videos: widget.videoUrl,) ));},
            child: Container(height: 60, width: 60,
            decoration: BoxDecoration(color: Colors.amber,
            borderRadius: BorderRadius.circular(100)
            ),
            child: Icon(Icons.play_arrow,size: 50,color: anColor1,),
            ),
          ),],),),),],),);}

      //===== Description======================
      Padding _DescriptionBuil() {
          return Padding(
            padding: const EdgeInsets.only(top: 15 ,left: 10 , right: 10 ,bottom: 40),
            child: new Container(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("${widget.name}" ,style: TextStyle(fontSize: 25,color: anColor1 ),),
                  SizedBox(height: 10),
                  Text(widget.description,style: TextStyle(color: Colors.grey),),
                ],
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
        IconButton(icon: Icon(Icons.more_horiz), onPressed: onPressed),
        Text(nameSection , style: TextStyle(fontSize: 20),),
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
      child: new Container(
      width: 120,
      child: Column(
        children: <Widget>[
          new Container(
            height: 170,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(imag))
            ),
          ),
          SizedBox(height:4),
          new Text(name, style: TextStyle(color: Colors.grey),)
        ],
      ),
      ),
      ),
      );
      }


      }