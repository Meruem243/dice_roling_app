import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Center(
            child: Text(
              "Dice",
              style: TextStyle(
                fontSize: 50.0,
                color: Colors.blue,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.red[800],
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // const DicePage({super.key});
  int leftDiceNum = 3;
  int rightDiceNum = 4;
  @override
  Widget build(BuildContext context) {
    // leftDiceNum = 6;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            // flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    leftDiceNum = Random().nextInt(6) + 1;
                    rightDiceNum = Random().nextInt(6) + 1;
                    // leftDiceNum = 6;
                    // rightDiceNum = 6;
                  });
                },
                child: Image(
                  image: AssetImage('images/dice$leftDiceNum.png'),
                ),
              ),
            ),
          ),
          Expanded(
            // flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    rightDiceNum = Random().nextInt(6) + 1;
                    leftDiceNum = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$rightDiceNum.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
