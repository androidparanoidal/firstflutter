import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/bing.png'),
              // backgroundColor: Colors.red,
            ),
            Text('Hello, Moto!',
                style: TextStyle(
                    fontFamily: 'Lobster',
                    fontSize: 38.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            Text('AMBASSADOR OF MOTO',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.indigo[100],
                    fontFamily: 'SourceSansPro')),
            SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.indigo[100],
                )),
            Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.android, color: Colors.indigo),
                  title: Text(
                    'Привет',
                    style: TextStyle(
                        color: Colors.indigo[900],
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0),
                  ),
                )),
            Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.indigo),
                  title: Text(
                    '+ 7 000 000 00 00',
                    style: TextStyle(
                        color: Colors.indigo[900],
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0),
                  ),
                )),
          ],
        )),
      ),
    );
  }
}
