import 'package:flutter/material.dart';

import 'main.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(BMICalculator.title),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: const <Widget>[
                Expanded(
                  child: ReusableCard(colour: lightBlue),
                ),
                Expanded(
                  child: ReusableCard(colour: lightBlue),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusableCard(colour: lightBlue),
          ),
          Expanded(
            child: Row(
              children: const <Widget>[
                Expanded(
                  child: ReusableCard(colour: lightBlue),
                ),
                Expanded(
                  child: ReusableCard(colour: lightBlue),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
    const ReusableCard({required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
