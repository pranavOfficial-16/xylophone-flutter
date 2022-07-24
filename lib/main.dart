import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  Expanded buildkey({Color color, int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () {
          final player = AudioCache();
          player.play('note$soundNumber.wav');
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color: Colors.red, soundNumber: 1),
              buildkey(color: Colors.yellow, soundNumber: 2),
              buildkey(color: Colors.blue, soundNumber: 3),
              buildkey(color: Colors.green, soundNumber: 4),
              buildkey(color: Colors.orange, soundNumber: 5),
              buildkey(color: Colors.deepPurple, soundNumber: 6),
              buildkey(color: Colors.pink, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
