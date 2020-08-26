import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Widget buildKey({Color color, int keyNum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(keyNum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, keyNum: 1),
              buildKey(color: Colors.orange, keyNum: 2),
              buildKey(color: Colors.yellow, keyNum: 3),
              buildKey(color: Colors.green, keyNum: 4),
              buildKey(color: Colors.teal, keyNum: 5),
              buildKey(color: Colors.blue, keyNum: 6),
              buildKey(color: Colors.purple, keyNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
