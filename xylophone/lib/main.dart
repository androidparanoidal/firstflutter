import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  playSound(1);
                },
                child: Container(color: Colors.red, height: 40.0, width: 70.0),
              ),
              TextButton(
                onPressed: () {
                  playSound(2);
                },
                child:
                    Container(color: Colors.orange, height: 40.0, width: 70.0),
              ),
              TextButton(
                onPressed: () {
                  playSound(3);
                },
                child:
                    Container(color: Colors.yellow, height: 40.0, width: 70.0),
              ),
              TextButton(
                onPressed: () {
                  playSound(4);
                },
                child:
                    Container(color: Colors.green, height: 40.0, width: 70.0),
              ),
              TextButton(
                onPressed: () {
                  playSound(5);
                },
                child: Container(color: Colors.blue, height: 40.0, width: 70.0),
              ),
              TextButton(
                onPressed: () {
                  playSound(6);
                },
                child: Container(
                    color: Colors.blue[900], height: 40.0, width: 70.0),
              ),
              TextButton(
                onPressed: () {
                  playSound(7);
                },
                child:
                    Container(color: Colors.purple, height: 40.0, width: 70.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
