import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void PlaySound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
        child: TextButton(
            style: TextButton.styleFrom(foregroundColor: color),
            onPressed: () {
              PlaySound(soundNumber);
            },
            child: Text('Touch me!')));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, soundNumber: 1),
                buildKey(color: Colors.blue, soundNumber: 2),
                buildKey(color: Colors.green, soundNumber: 3),
                buildKey(color: Colors.purple, soundNumber: 4),
                buildKey(color: Colors.yellow, soundNumber: 5),
                buildKey(color: Colors.orange, soundNumber: 6),
                buildKey(color: Colors.indigo, soundNumber: 7)
              ]),
        ),
      ),
    );
  }
}
