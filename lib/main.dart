import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Expanded(
          // flex: 1,
          child: Image(
            image: AssetImage('images/dice1.png'),
          ),
        ),
        Expanded(
          // flex: 2,
          child: Image.asset('images/dice1.png'),
        ),
      ],
    );
  }
}
