import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        backgroundColor: Colors.red[100],
        body: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftDice = 1;
  int rightDice = 1;

  void changeDice(){
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
          children: [
            Expanded(
                child: TextButton(
                  onPressed: (){
                    changeDice();
                  },
                  child: Image.asset('images/dice$leftDice.png'),
                ),
            ),
            Expanded(
                child: TextButton(
                  onPressed: () {
                    changeDice();
                  },
                  child: Image.asset('images/dice$rightDice.png'),
                ),
            ),
          ],
        ),
      );
  }
}
