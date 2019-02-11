import 'package:flutter/material.dart';
import 'package:flutter_youtube/flutter_youtube.dart';

class Plyer extends StatefulWidget {
  final String Videos;
  const Plyer({Key key, this.Videos}) : super(key: key);
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Plyer> {
  var youtube = new FlutterYoutube();
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        body: Center(
          child: FlutterYoutube.playYoutubeVideoByUrl(
              apiKey: "<API_KEY>",
              videoUrl: widget.Videos,
              autoPlay: true, //default falase
              fullScreen: false, //default false
          ),
        ),



      ),
    );
  }
}