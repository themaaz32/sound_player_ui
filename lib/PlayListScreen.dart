import 'package:flutter/material.dart';

class PlayListScreen extends StatelessWidget {
  final fontFamily = "Roboto";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //Container for playlist header
                  SizedBox(height: 40,),
                  Container(
                    padding: EdgeInsets.only(left: 32, right: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("PLAYLIST", style: TextStyle(color: Colors.grey, fontFamily: fontFamily, fontWeight: FontWeight.w900, letterSpacing: 1),),
                            SizedBox(width: 4,),
                            Text("Playlist name", style: TextStyle(color: Colors.grey[900], fontFamily: fontFamily, fontWeight: FontWeight.w700, letterSpacing: 0.5, fontSize: 22),)
                          ],
                        ),

                        //Container for button down button
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [BoxShadow(color: Colors.grey[200], spreadRadius: 1.0, blurRadius: 8.0)],
                            borderRadius: BorderRadius.all(Radius.circular(50)),

                          ),
                          child: Icon(Icons.keyboard_arrow_down, color: Colors.black, size: 30,),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 40,),
                  //Container for ListView of playlist
                  ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                      itemBuilder: (context, index){
                        return Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.play_circle_outline, size: 30, color: Colors.grey[700],),
                            ),

                            SizedBox(width: 32,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Oscar Hayes", style: TextStyle(color: Colors.grey, fontFamily: fontFamily, fontWeight: FontWeight.w900, letterSpacing: 0.5),),
                                  SizedBox(height: 4,),
                                  Text("The Dawn", style: TextStyle(color: Colors.grey[900], fontFamily: fontFamily, fontWeight: FontWeight.w700, letterSpacing: 1.5, fontSize: 22),)
                                ],
                              ),
                            ),

                            Text("03:02", style: TextStyle(color: Colors.grey, fontFamily: fontFamily, fontWeight: FontWeight.w900, letterSpacing: 0.5),)
                          ],
                        );
                      },
                      separatorBuilder: (context, index) =>Divider(height: 40,),
                      itemCount: 6,
                    shrinkWrap: true,
                    controller: ScrollController(keepScrollOffset: false),
                  ),

                ],
              ),
            ),
          ),
          SizedBox(height: 40,),
          //Container for blue PlayContainer
          Container(
            padding: EdgeInsets.all(32),
            color: Colors.lightBlue,
            width: double.infinity,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.play_circle_outline, size: 30, color: Colors.white,), color: Colors.white,),

                SizedBox(width: 32,),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Oscar Hayes", style: TextStyle(color: Colors.white, fontFamily: fontFamily, fontWeight: FontWeight.w300, letterSpacing: 0.5),),
                      Text("The Dawn", style: TextStyle(color: Colors.grey[100], fontFamily: fontFamily, fontWeight: FontWeight.w500, letterSpacing: 1.5, fontSize: 22),),
                    ],
                  ),
                ),

                SizedBox(width: 32,),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(color: Colors.grey[200], spreadRadius: 1.0, blurRadius: 8.0)],
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Icon(Icons.keyboard_arrow_down, color: Colors.black, size: 30,),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
