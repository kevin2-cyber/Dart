import 'package:flutter/material.dart';
import 'package:onboarding_screen/page/onboarding_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  static const String title = 'OnBoarding Example';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData.dark(),
      home: const OnBoardingPage(),
    );
  }
}
