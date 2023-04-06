// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Name'),
          backgroundColor: Colors.deepPurple[300],
        ),
        //body: Center(),
        backgroundColor: Colors.grey[400],
        body: Center(
          child: Image(
            image: AssetImage('images/bing.png'),
          ),
        ),
      ),
    ),
  );
}
