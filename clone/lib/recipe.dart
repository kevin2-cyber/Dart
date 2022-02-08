class Recipe {
  String label;
  String imageUrl;
  //TODO: Add servings and ingredients here
  int servings;
  List<Ingredient> ingredients;

Recipe({
  required this.label,
  required this.imageUrl,
  required this.servings,
  required this.ingredients,
});

static List<Recipe> samples = [
  Recipe(
    label: 'Spaghetti and Meatballs',
    imageUrl: 'images/spaghetti.jpg',
    servings: 4,
    ingredients: <Ingredient>[
      Ingredient(1, 'box', 'Spaghetti'),
      Ingredient(4, '', 'Frozen MeatBalls'),
      Ingredient(0.5, 'jar', 'sauce'),
    ],
  ),
  Recipe(
    label: 'Tomato Soup',
    imageUrl: 'images/tomatoes.jpg',
    servings: 2,
    ingredients: <Ingredient>[
      Ingredient(1, 'can', 'Tomato Soup'),
    ],
  ),
  Recipe(
    label: 'Grilled Cheese',
    imageUrl: 'images/grilled_cheese.jpg',
    servings: 1,
    ingredients: <Ingredient>[
      Ingredient(2, 'slices', 'Cheeses'),
      Ingredient(2, 'slices', 'Bread'),
    ],
  ),
  Recipe(
    label: 'Chocolate Chip Cookies',
    imageUrl: 'images/chocolate_chips.jpg',
    servings: 24,
    ingredients: <Ingredient>[
      Ingredient(4, 'cups', 'flour'),
      Ingredient(2, 'cups', 'sugar'),
      Ingredient(0.5, 'cups', 'Chocolate chips'),
    ],
  ),
  Recipe(
    label: 'Tacos Salad',
    imageUrl: 'images/tacosalad.jpg',
    servings: 1,
    ingredients: <Ingredient>[
      Ingredient(4, 'oz', 'nachos'),
      Ingredient(3, 'oz', 'taco meat'),
      Ingredient(0.5, 'cup', 'cheese'),
      Ingredient(0.25, 'cup', 'chopped tomatoes'),
    ],
  ),
  Recipe(
    label: 'Hawaiian Pizza',
    imageUrl: 'images/hawaii.jpg',
    servings: 4,
    ingredients: <Ingredient>[
      Ingredient(1, 'item', 'pizza'),
      Ingredient(1, 'cup', 'pineapple'),
      Ingredient(8, 'oz', 'ham'),
    ],
  ),
];

}
//TODO: Add Ingredient() here

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(
      this.quantity,
      this.measure,
      this.name,
      );
}