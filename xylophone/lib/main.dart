import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note1.wav'));
                },
                child: Container(color: Colors.red, height: 40.0, width: 70.0),
              ),
              TextButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note2.wav'));
                },
                child:
                    Container(color: Colors.orange, height: 40.0, width: 70.0),
              ),
              TextButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note3.wav'));
                },
                child:
                    Container(color: Colors.yellow, height: 40.0, width: 70.0),
              ),
              TextButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note4.wav'));
                },
                child:
                    Container(color: Colors.green, height: 40.0, width: 70.0),
              ),
              TextButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note5.wav'));
                },
                child: Container(color: Colors.blue, height: 40.0, width: 70.0),
              ),
              TextButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note6.wav'));
                },
                child: Container(
                    color: Colors.blue[900], height: 40.0, width: 70.0),
              ),
              TextButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note7.wav'));
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
