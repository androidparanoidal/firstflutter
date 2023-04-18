import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  print("Dice Number = $leftDiceNum");
                  leftDiceNum = 5;
                  print("Dice Number = $leftDiceNum");
                });
              },
              child: Image.asset('images/dice$leftDiceNum.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                print("Clicked!!");
              },
              child: Image.asset('images/dice2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
