import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import 'input_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: kappBarThemeColor,
      home: const InputPage(),
    );
  }
}

