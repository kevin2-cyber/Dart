import 'package:essilfie_clone/recipe.dart';
import 'package:essilfie_clone/recipe_detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        title: Center(
            child: Text(
                widget.title,
              style: GoogleFonts.lato(),
            ),
        ),
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
              return GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) {
                            return RecipeDetail(recipe: Recipe.samples[index]);
                            },
                          ),
                  );
                },
                  child: buildRecipeCard(Recipe.samples[index]),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
    // Return a card from buildRecipeCard()
    return Card(
      // A card's elevation determines how high off the screen the card is,
      // affecting it's shadow.
      elevation: 2.0,
      // shape handles the shape of the card.
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      // Padding insert's it's child's content by the specified padding value.
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        // A widget that defines a vertical layout.
        child: Column(
          // Has 2 children
          children: <Widget>[
            // AssetImage states that the image is fetched from the local asset bundle defined in the pubspec.yaml
            Image(
              image: AssetImage(recipe.imageUrl),
            ),
            // This is a blank view with a fixed sized.
            const SizedBox(
              height: 14.0,
            ),
            // Contains the recipe.label value
            Text(
                recipe.label,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
