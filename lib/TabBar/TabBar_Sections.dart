import 'package:flutter/material.dart';
import 'package:moviesapp/Tools/app_Colors.dart';

import '../Pages/Page_Action.dart';
import '../Pages/Page_Wars.dart';
import '../Pages/Page_Horror.dart';
import '../Pages/Page_Anmination.dart';
import '../Pages/Page_Drama.dart';
import '../Tools/app_Colors.dart';

class TabBar_Sections extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<TabBar_Sections> {

  String PosterAction ="https://image.tmdb.org/t/p/w1066_and_h600_bestv2/rH79sB6Nkx4cMW3JzsUy7wK0rhX.jpg";
  String PosterWars ="https://image.tmdb.org/t/p/w1066_and_h600_bestv2/8N18uL4wDkjwhlwwaPFH1KIGUur.jpg";
  String PosterHorror ="https://image.tmdb.org/t/p/w1066_and_h600_bestv2/6OnBU07yyxvJDWPa6KKALKSeXDM.jpg";
  String PosterAnmination ="https://image.tmdb.org/t/p/w1066_and_h600_bestv2/7t88SoT3Dd8DhGnQuVoSbMNUl3W.jpg";
  String PosterDrama ="https://image.tmdb.org/t/p/w1066_and_h600_bestv2/A4xNxrRodvXzJWJs2GbBKo1IBk2.jpg";

  @override
  Widget build(BuildContext context) {
  return Container(
    color: anColor2,
    child: ListView(
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        _itmeSectionDetector(imagURL: PosterDrama,nameSection: "Movies Drama",onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Page_Drama()),);}),
        _itmeSectionDetector(imagURL: PosterAnmination,nameSection: "Movies Anmination",onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Page_Anmination()),);}),
        _itmeSectionDetector(imagURL: PosterAction,nameSection: "Movies Action",onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Page_Action()),);}),
        _itmeSectionDetector(imagURL: PosterWars,nameSection: "Movies Wars",onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Page_Wars()),);}),
        _itmeSectionDetector(imagURL: PosterHorror,nameSection: "Movies Horror",onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Page_Horror()),);}),
      ],
    ),
  );
  }

  GestureDetector _itmeSectionDetector({
    String imagURL = "https://cdn.pixabay.com/photo/2018/12/09/14/44/leaf-3865014__480.jpg",
    String nameSection = "عنوان القسم ",
    GestureTapCallback onTap,
}) {
    return GestureDetector(
      onTap: onTap,
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