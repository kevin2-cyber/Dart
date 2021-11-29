import 'package:flutter/material.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: CalPage(),
      ),
    );
  }
}

class CalPage extends StatefulWidget {
  const CalPage({Key? key}) : super(key: key);

  @override
  _CalPageState createState() => _CalPageState();
}

class _CalPageState extends State<CalPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


