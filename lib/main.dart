import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
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
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftButton = 1;
  int rightButton = 1;

  void generateRandomNumber() {
    leftButton = Random().nextInt(6) + 1;
    rightButton = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            // flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  generateRandomNumber();
                });
              },
              child: Image.asset(
                'images/dice$leftButton.png',
              ),
            ),
          ),
          Expanded(
            // flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  generateRandomNumber();
                });
              },
              child: Image.asset(
                'images/dice$rightButton.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
