import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:moviesapp/Tools/app_Colors.dart';

import '../Model/MyData_MoviesِAnimation.dart';
import '../Details/Details_Anmination.dart';

class Page_Anmination extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Page_Anmination> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(


        //----AppBar-----------------------------------
        appBar: AppBar(
          title: Text("Movies Action",style: TextStyle(color: Colors.amber),),
          elevation: 0,
          centerTitle: true,
          backgroundColor: anColor2,
          leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){Navigator.pop(context);}),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: (){}),
          ],
        ),



        //----Body-----------------------------------
        body: Container(
          color: anColor2,
//          color: Colors.white,
          child: new StaggeredGridView.countBuilder(
            //هنا يحدد طول الصورة التي تظهر في العمود اليمين واليسار
              staggeredTileBuilder: (int index) => new StaggeredTile.count(1, index.isEven ? 1.5 : 1.5),
              crossAxisCount: 3,
              itemCount: dataMoviesAnimation.length,                         //هنا المكان الذي يجلب منه البيانات
              mainAxisSpacing: 4,                                                  //هنا المسافة بين الصف والصف الاخر
              crossAxisSpacing: 4,                                                   //هنا المسافة بين العمود والعمود  الاخر
              physics: BouncingScrollPhysics(),                            //هنا يتم عمل السكرول مثل الايفون
              itemBuilder: (BuildContext context, int index) {
            return buildGestureDetector(
                index ,imgUrl: "${dataMoviesAnimation[index].imagUrl}" ,
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> Details_Anmination(
                imagUrl:"${dataMoviesAnimation[index].imagUrl}",
                name: "${dataMoviesAnimation[index].name}",
                description: "${dataMoviesAnimation[index].description}",
                videoUrl: "${dataMoviesAnimation[index].videoUrl}",
                ) ));});
          }
      ),
          ),



      ),
    );
  }

  GestureDetector buildGestureDetector(int index , {String imgUrl , GestureTapCallback  onTap}) {
    return new GestureDetector(onTap: onTap,
            child: new Stack(
              children: <Widget>[
                new Container(
                  decoration: BoxDecoration(
                      image: DecorationImage( fit: BoxFit.fill,
                          image: NetworkImage(imgUrl))
                  ),
                ),
                Positioned(
                    bottom: -0,
                    child: Container(
                      height: 40,
                        alignment: Alignment.center,
//                            color: Colors.black.withOpacity(0.7),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
//                                Text("${dataMoviAction[index].name}" ,style: TextStyle(color: Colors.white ,fontSize: 17),),
//                                IconButton(icon: Icon(Icons.favorite,color: Colors.red,), onPressed: (){})
                          ],
                        )
                    ))
              ],
            ),
          );
  }
}