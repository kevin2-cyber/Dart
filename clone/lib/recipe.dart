class Recipe {
  String label;
  String imageUrl;
  //TODO: Add servings and ingredients here

Recipe({
  required this.label,
  required this.imageUrl,
});
//TODO: Add List<Recipe> here

static List<Recipe> samples = [
  Recipe(
    label: 'Palmnut Soup',
    imageUrl: 'images/palmnut.jpg',
  ),
  Recipe(
    label: 'Spaghetti and Meatballs',
    imageUrl: 'images/spaghetti.jpg',
  ),
  Recipe(
    label: 'Tomato Soup',
    imageUrl: 'images/tomato.jpg',
  ),
  Recipe(
    label: 'Grilled Cheese',
    imageUrl: 'images/grilled.jpg',
  ),
  Recipe(
    label: 'Tacos Salad',
    imageUrl: 'images/tacos.jpg',
  ),
  Recipe(
    label: 'Chocolate Chip Cookies',
    imageUrl: 'images/chocolate.jpg',
  ),
];

}
//TODO: Add Ingredient() here