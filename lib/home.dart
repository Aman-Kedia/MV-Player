import 'package:flutter/material.dart';
import 'package:MV_Player/audio_local.dart';
import 'package:MV_Player/video_local.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: ClipOval(
            child: Image(
              image: AssetImage('images/logo.png'),
            ),
          ),
        ),
        title: Text('MV Player'),
        backgroundColor: Colors.black45,
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          height: MediaQuery.of(context).size.height * 1.0,
          color: Colors.lightBlue.shade50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.2,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
                padding: EdgeInsets.all(5),
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => AudioLocal(),
                      ),
                    );
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => AudioLocal(),
                    //   ),
                    // );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        padding: EdgeInsets.all(5),
                        child: Icon(
                          Icons.music_note,
                          size: MediaQuery.of(context).size.height * 0.16,
                          color: Colors.blue.shade800,
                        ),
                      ),
                      Text(
                        "  Audio",
                        style: TextStyle(
                          color: Colors.blue.shade800,
                          fontSize: MediaQuery.of(context).size.height * 0.08,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.2,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                padding: EdgeInsets.all(5),
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => VideoLocal(),
                      ),
                    );
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => VideoLocal(),
                    //   ),
                    // );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        padding: EdgeInsets.all(5),
                        child: Icon(
                          Icons.video_library,
                          size: MediaQuery.of(context).size.height * 0.16,
                          color: Colors.blue.shade800,
                        ),
                      ),
                      Text(
                        "  Video",
                        style: TextStyle(
                          color: Colors.blue.shade800,
                          fontSize: MediaQuery.of(context).size.height * 0.08,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
