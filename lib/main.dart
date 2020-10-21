import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: DrumPage(),
      ),
    );
  }
}

class DrumPage extends StatelessWidget {


  void sesical(String ses)
  {
    final player = AudioCache();
    player.play('$ses.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: buildDrumPad('bongo',Colors.blueAccent),
                ),
                Expanded(
                  child:  buildDrumPad('bip',Colors.redAccent),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: buildDrumPad('clap1',Colors.greenAccent),
                ),
                Expanded(
                  child: buildDrumPad('crash',Colors.yellowAccent),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: buildDrumPad('how',Colors.brown),
                ),
                Expanded(
                  child: buildDrumPad('woo',Colors.pinkAccent),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: buildDrumPad('ridebel',Colors.orangeAccent),
                ),
                Expanded(
                  child: buildDrumPad('clap3',Colors.blueGrey),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }

  FlatButton buildDrumPad(String ses,Color renk) {
    return FlatButton(
                  padding: EdgeInsets.all(8),
                  onPressed: () {
                    sesical(ses);
                  },
                  child: Container(
                    color: renk,
                  ),
                );
  }
}
