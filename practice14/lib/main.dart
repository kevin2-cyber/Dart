


import 'package:flutter/material.dart';
import 'package:practice14/welcome.dart';

import 'FooderlichTheme.dart';

void main() => runApp(const Fooderlich());


class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final theme = FooderlichTheme.dark();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fooderlich',
      theme: theme,
      home: const Welcome(),
    );
  }
}