import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  Expanded buildKey({required Color clr, required int noteNumber}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          playSound(noteNumber);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>((clr)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
        ),
        child: Text(' '),
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(clr: Colors.red, noteNumber: 1),
              buildKey(clr: Colors.orange, noteNumber: 2),
              buildKey(clr: Colors.yellow, noteNumber: 3),
              buildKey(clr: Colors.green, noteNumber: 4),
              buildKey(clr: Colors.teal, noteNumber: 5),
              buildKey(clr: Colors.blue, noteNumber: 6),
              buildKey(clr: Colors.purple, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
