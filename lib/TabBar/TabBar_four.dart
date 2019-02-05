import 'package:flutter/material.dart';
import 'package:moviesapp/Tools/app_Colors.dart';

class TabBar_four extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<TabBar_four> {
  @override
  Widget build(BuildContext context) {
  return ListView(
    children: <Widget>[
      _itmeSectionDetector(imagURL: "https://image.tmdb.org/t/p/w1066_and_h600_bestv2/hMANgfPHR1tRObNp2oPiOi9mMlz.jpg"),
      _itmeSectionDetector(imagURL: "https://image.tmdb.org/t/p/w1066_and_h600_bestv2/71OjxI27tK7kTIiPnMkdQDx14pe.jpg"),
      _itmeSectionDetector(imagURL: "https://image.tmdb.org/t/p/w1066_and_h600_bestv2/8yqLPNwNCtpOPc3XkOlkSMnghzw.jpg"),
      _itmeSectionDetector(imagURL: "https://image.tmdb.org/t/p/w1066_and_h600_bestv2/gCIB3DdK00DyfwosVGf7pnFFdK3.jpg"),
      _itmeSectionDetector(imagURL: "https://image.tmdb.org/t/p/w1066_and_h600_bestv2/gb3TVVZNNxVGNfS1NxGaiWZfwnW.jpg"),
      _itmeSectionDetector(imagURL: "https://image.tmdb.org/t/p/w1066_and_h600_bestv2/3s9O5af2xWKWR5JzP2iJZpZeQQg.jpg"),
      _itmeSectionDetector(imagURL: "https://image.tmdb.org/t/p/w1066_and_h600_bestv2/z6m7s4w4Erxnr5k2jc1TZR1AMva.jpg"),
      _itmeSectionDetector(imagURL: "https://image.tmdb.org/t/p/w1066_and_h600_bestv2/a24i4Qw6qFTtkFLQsncv8WPwevj.jpg"),
    ],
  );
  }

  GestureDetector _itmeSectionDetector({
    String imagURL = "https://cdn.pixabay.com/photo/2018/12/09/14/44/leaf-3865014__480.jpg",
    String nameSection = "مسلسلات رمضان ٢٠١٩",
}) {
    return GestureDetector(
      onTap: (){print("aslkdjalskjd");},
      child: new Stack(
        children: <Widget>[

          new Container(height: 210,
            decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,
                    image: NetworkImage(imagURL))
            ),
          ),


          Positioned(left: 0, right: 0, bottom: 0,
              child:Center(
                child: Container(
                  height: 130,
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [anColor1.withOpacity(0.0), anColor2.withOpacity(0.8)],
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                      ),
                    color: Colors.red
                  ),
                ),)),



          Positioned(left: 15, right: 15, bottom: 1,
              child:Center(
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: new Text(nameSection,
                    style: new TextStyle(color: Colors.white,
                        fontSize: 24.0 , fontWeight: FontWeight.w500),),
                ),))


        ],
      ),
    );
  }
}