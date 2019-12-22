import 'package:flutter/material.dart';
import 'package:sound_player_ui/PlayListScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: AudioPlayerWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AudioPlayerWidget extends StatelessWidget {
  final fontFamily= "Roboto";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          //Container for header
          
          Container(
            width: double.infinity,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                //Container for image
                Container(
                  margin: EdgeInsets.only(left: 32, right: 32),
                  width: double.infinity,
                  child: ClipRRect(
                    child: Image.asset("assets/images/abc.jpg", fit: BoxFit.contain,),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(200), bottomRight: Radius.circular(200)),
                  )
                ),
                
                //Container for audio player
                Positioned(
                  child: Container(
                    width: 300,
                    height: 80,
                    padding: EdgeInsets.only(left: 16, right: 16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        boxShadow: [BoxShadow(color: Colors.grey[200], blurRadius: 10.0, spreadRadius: 0.1)]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.fast_rewind, color: Colors.grey[700], size: 30,),
                        ),
                        IconButton(
                          icon: Icon(Icons.play_arrow, color: Colors.grey[700], size: 30,),
                        ),
                        IconButton(
                          icon: Icon(Icons.fast_forward, color: Colors.grey[700], size: 30,),
                        )
                      ],
                    ),
                  ),
                  bottom: 0,
                )
              ],
            ),
          ),

          //Container for playlist header

          SizedBox(height: 16,),

          Container(
            padding: EdgeInsets.only(left: 32, right: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("PLAYLIST", style: TextStyle(color: Colors.grey, fontFamily: fontFamily, fontWeight: FontWeight.w900, letterSpacing: 1),),
                    SizedBox(height: 4,),
                    Text("Playlist name", style: TextStyle(color: Colors.grey[900], fontFamily: fontFamily, fontWeight: FontWeight.w700, letterSpacing: 1, fontSize: 22),),
                  ],
                ),

                //Container For down Button
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    boxShadow: [BoxShadow(color: Colors.grey[200], spreadRadius: 1.0, blurRadius: 8.0)]
                  ),
                  child: IconButton(
                    icon: Icon(Icons.keyboard_arrow_down, color: Colors.grey[900], size: 30,),
                    onPressed: (){
                      //code to navigate to different screen
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => PlayListScreen()
                      ));
                    },
                  ),
                )
              ],
            ),
          ),

          SizedBox(height: 16,),

          //Container for Icons

          Container(
            padding: EdgeInsets.only(left: 32, right: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.favorite, color: Colors.redAccent,),
                ),
                IconButton(
                  icon: Icon(Icons.repeat, color: Colors.grey[700],),
                ),
                IconButton(
                  icon: Icon(Icons.shuffle, color: Colors.grey[700],),
                ),
                IconButton(
                  icon: Icon(Icons.more_horiz, color: Colors.grey[700],),
                ),
              ],
            ),
          ),

          SizedBox(height: 16,),

          //Container for song name
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 32, right: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Oscar Hayes", style: TextStyle(color: Colors.grey, fontFamily: fontFamily, fontWeight: FontWeight.w900, letterSpacing: 0.5),),
                SizedBox(width: 4,),
                Text("The Dawn", style: TextStyle(color: Colors.grey[900], fontFamily: fontFamily, fontWeight: FontWeight.w700, letterSpacing: 1.5, fontSize: 32),),

              ],
            ),
          ),

          SizedBox(height: 16,),

          //Container for player indicator,

          Container(
            padding: EdgeInsets.only(left: 32),
            width: double.infinity,
            child: Column(
              children: <Widget>[
                //Container for time

                Row(
                  children: <Widget>[
                    SizedBox(width: 180,),
                    Text("02:01", style: TextStyle(color: Colors.grey[700], fontFamily: fontFamily, fontWeight: FontWeight.w500),),
                    Expanded(
                      child: Container(),
                    ),
                    Text("03:11", style: TextStyle(color: Colors.grey[700], fontFamily: fontFamily, fontWeight: FontWeight.w500),),
                    SizedBox(width: 10,),
                  ],
                ),

                //Container for seeker or indicator
                Container(
                  width: double.infinity,
                  height: 40,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 2,
                        color: Colors.grey[200],
                        margin: EdgeInsets.symmetric(vertical: 16),
                      ),

                      Container(
                        width: 200,
                        height: 2,
                        color: Colors.lightBlueAccent,
                        margin: EdgeInsets.symmetric(vertical: 16),
                      ),

                      Positioned(
                        child: CircleAvatar(
                          backgroundColor: Colors.lightBlueAccent,
                          radius: 5,
                        ),
                        left: 200,
                        top: 12,
                      )

                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


