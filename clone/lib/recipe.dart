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
    label: 'Spaghetti and Meatballs',
    imageUrl: 'images/spaghetti.jpg',
  ),
  Recipe(
    label: 'Tomato Soup',
    imageUrl: 'images/tomato.jpg',
  ),
  Recipe(
    label: 'Grilled Cheese',
    imageUrl: 'images/grilled_cheese.jpg',
  ),
  Recipe(
    label: 'Chocolate Chip Cookies',
    imageUrl: 'images/chocolate_chips.jpg',
  ),
  Recipe(
    label: 'Tacos Salad',
    imageUrl: 'images/tacos.jpg',
  ),
  Recipe(
    label: 'Hawaiian Pizza',
    imageUrl: 'images/hawaii.jpg',
  ),
];

}
//TODO: Add Ingredient() here