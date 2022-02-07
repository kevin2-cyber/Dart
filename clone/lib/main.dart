import 'package:essilfie_clone/home_screen.dart';
import 'package:flutter/material.dart';


void main() => runApp(const RecipeApp());

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  @override
  /* widget's build() method is the entry point for composing together
  other widgets to make a new widget.*/
  Widget build(BuildContext context) {

    // A theme determines visual aspects like color.
    // The default ThemeData will show the standard Material Defaults.
    final ThemeData theme = ThemeData();

    // MaterialApp uses Material Design and it is the widget that will be included in the RecipeApp.
    return MaterialApp(
      // The title of the app is a description that the device uses to identify the app.
      // the UI won't display this.
      title: 'Recipe Calculator',
      /*
      Turns on a little "DEBUG" banner in debug mode to indicate that the app is in debug mode.
       This is on by default (in debug mode), to turn it off,
       set the constructor argument to false. In release mode this has no effect.
       */
      debugShowCheckedModeBanner: false,
      /*
      By copying the theme and replacing the color scheme with an updated copy let's
      you change the app's colors.
       */
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
        ),
      ),
      /*
      This still uses the same Home widget as before, but now,
      you've updated the title and displayed it on the device,
       */
      home: const Home(
        title: 'Recipe Calculator',
      ),
    );
  }
}
