import 'package:MV_Player/audio_local.dart';
import 'package:flutter/material.dart';

class AudioPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          height: MediaQuery.of(context).size.height * 1.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.green[400],
                Colors.black38,
              ],
            ),
          ),
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: MediaQuery.of(context).size.height * 0.7,
                  margin: EdgeInsets.fromLTRB(10, 30, 10, 0),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset('images/logo.png'),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AudioLocal(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            size: 35,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: MediaQuery.of(context).size.height * 0.22,
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                  color: Colors.red,
                  child: Center(
                    child: Icon(
                      Icons.play_circle_filled,
                      color: Colors.black87,
                      size: 80,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
