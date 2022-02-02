import 'package:essilfie_clone/home_screen.dart';
import 'package:flutter/material.dart';


void main() => runApp(const CloneApp());

class CloneApp extends StatelessWidget {
  const CloneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const Home(),
    );
  }
}
