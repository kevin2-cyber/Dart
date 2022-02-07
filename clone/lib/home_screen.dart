import 'package:essilfie_clone/recipe.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    // A Scaffold provides the high-level structure for a screen.
    return Scaffold(

      // AppBar gets a title property by using a Text Widget.
      appBar: AppBar(
        title: Text(widget.title),
      ),
      /*
      body has SafeArea, which keeps the app from getting too close to the operating system
      interfaces.
       */
      body: SafeArea(
        //TODO: Replace child: Container()
        // SafeArea has a child widget which is an empty Container widget.
        child: Container(
          // Builds a List using ListView
          child: ListView.builder(
            // determines the number of rows the list has.
            itemCount: Recipe.samples.length,
            // builds the widget tree for each row
            itemBuilder: (BuildContext context, int index){
              // Displays the name of the recipe
              //TODO: Update to return Recipe card
              //TODO: Add a GestureDetector
              return buildRecipeCard(Recipe.samples[index]);
            },
          ),
        ),
      ),
    );
  }
  //TODO: Add buildRecipeCard() here
  Widget buildRecipeCard(Recipe recipe) {
    // Return a card from buildRecipeCard()
    return Card(
      // A widget that defines a vertical layout.
      child: Column(
        // Has 2 children
        children: <Widget>[
          // AssetImage states that the image is fetched from the local asset bundle defined in the pubspec.yaml
          Image(
            image: AssetImage(recipe.imageUrl),
          ),
          // Contains the recipe.label value
          Text(recipe.label),
        ],
      ),
    );
  }
}
