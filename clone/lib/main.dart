import 'package:essilfie_clone/home_screen.dart';
import 'package:flutter/material.dart';


void main() => runApp(const RecipeApp());

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final ThemeData theme = ThemeData();

    return MaterialApp(
      title: 'Recipe Calculator',
      debugShowCheckedModeBanner: false,
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
        ),
      ),
      home: const Home(
        title: 'Recipe Calculator',
      ),
    );
  }
}
