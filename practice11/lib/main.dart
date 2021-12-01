import 'package:flutter/material.dart';

import 'input_page.dart';

const scaffoldColor = Color(0xFF0A0E21);
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  static const String title = 'BMI CALCULATOR';
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: scaffoldColor,
        ),
        scaffoldBackgroundColor: scaffoldColor,
      ),
      title: title,
      home: const InputPage(),
    );
  }
}

