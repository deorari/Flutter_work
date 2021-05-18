import 'dart:math';

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void press(int click) {
    final player = AudioCache();
    player.play('note$click.wav');
  }
  Expanded buildKey({Color color , int soundNumber})
  {
    return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
         press(soundNumber);
      },
    ),
  );
  }

  @override
  Widget build(BuildContext context) {
    int x;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber:2),
              buildKey(color: Colors.blue, soundNumber:3),
              buildKey(color: Colors.green, soundNumber:4),
              buildKey(color: Colors.orangeAccent, soundNumber:5),
              buildKey(color: Colors.yellow, soundNumber:6),
              buildKey(color: Colors.deepPurple, soundNumber:7),
              buildKey(color: Colors.pink, soundNumber:1),
            /*  Expanded(
                child: FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    press(1);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    press(2);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    press(3);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.purple,
                  onPressed: () {
                    press(4);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.yellowAccent,
                  onPressed: () {
                    press(5);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.pink,
                  onPressed: () {
                    press(6);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.teal,
                  onPressed: () {
                    press(7);
                  },
                ),
              ),
            */
            ],
          ),
        ),
      ),
    );
  }
}
