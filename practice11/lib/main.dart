import 'package:flutter/material.dart';

import 'constants.dart';
import 'input_page.dart';


void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: kappBarThemeColor,
      debugShowCheckedModeBanner: false,
      title: title,
      home: const InputPage(),
    );
  }
}

