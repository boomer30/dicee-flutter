import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage() : super();

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int diceNumber = 1;
  int diceNumber2 = 2;
  void updateDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
      diceNumber2 = Random().nextInt(6) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                updateDice();
              },
              child: Image.asset('images/dice$diceNumber.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                updateDice();
              },
              child: Image.asset('images/dice$diceNumber2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
