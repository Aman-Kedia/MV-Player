import 'package:MV_Player/audio_online.dart';
import 'package:MV_Player/audio_player.dart';
import 'package:MV_Player/home.dart';
import 'package:flutter/material.dart';

class AudioLocal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
        body: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          height: MediaQuery.of(context).size.height * 1.0,
          color: Colors.lightBlue.shade50,
          child: ListView(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.width * 0.14,
                margin: EdgeInsets.fromLTRB(10, 8, 10, 6),
                color: Colors.blue[800],
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AudioPlayer(),
                      ),
                    );
                  },
                  child: Text('avhasgvkh'),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.width * 0.14,
                margin: EdgeInsets.fromLTRB(10, 6, 10, 6),
                color: Colors.blue[800],
                child: const Center(child: Text('Audio Local')),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            width: MediaQuery.of(context).size.width * 1.0,
            height: MediaQuery.of(context).size.height * 0.095,
            color: Colors.lightBlue.shade50,
            child: Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.33,
                  height: MediaQuery.of(context).size.height * 0.095,
                  color: Colors.transparent,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          color: Colors.black54,
                          size: MediaQuery.of(context).size.height * 0.058,
                        ),
                        Text('Home'),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.33,
                  height: MediaQuery.of(context).size.height * 0.095,
                  color: Colors.transparent,
                  child: FlatButton(
                    onPressed: null,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.queue_music,
                          color: Colors.blue.shade800,
                          size: MediaQuery.of(context).size.height * 0.058,
                        ),
                        Text(
                          'Local',
                          style: TextStyle(
                            color: Colors.blue.shade800,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.34,
                  height: MediaQuery.of(context).size.height * 0.095,
                  color: Colors.transparent,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (BuildContext context) => AudioOnline(),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.library_music,
                          color: Colors.black54,
                          size: MediaQuery.of(context).size.height * 0.058,
                        ),
                        Text('Online'),
                      ],
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
