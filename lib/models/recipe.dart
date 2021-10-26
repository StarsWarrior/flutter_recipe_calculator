class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}

class Recipe {
  String label;
  String imgUrl;
  int servings;
  List<Ingredient> ingredient;

  Recipe(
    this.label,
    this.imgUrl,
    this.servings,
    this.ingredient,
  );

  static List<Recipe> samples = [
    Recipe(
      'Fish Curry',
      'assets/fish.jpg',
      5,
      [
        Ingredient(1, 'Kg', 'Rice'),
        Ingredient(1, 'Ltr', 'Oil'),
        Ingredient(4, 'Kg', 'Beef'),
        Ingredient(2, 'Pack', 'Masala'),
        Ingredient(5, 'Plates', 'Salaad'),
      ],
    ),
    Recipe(
      'Noodles',
      'assets/noodles.jpg',
      5,
      [
        Ingredient(1, 'Kg', 'Noodles'),
        Ingredient(1, 'Ltr', 'Oil'),
        Ingredient(4, 'Kg', 'Beef'),
        Ingredient(2, 'Pack', 'Masala'),
        Ingredient(5, 'Plates', 'Salaad'),
      ],
    ),
    Recipe(
      'Fried Rice',
      'assets/rice.jpg',
      5,
      [
        Ingredient(1, 'Kg', 'Rice'),
        Ingredient(1, 'Ltr', 'Oil'),
        Ingredient(4, 'Kg', 'Beef'),
        Ingredient(2, 'Pack', 'Masala'),
        Ingredient(5, 'Plates', 'Salaad'),
      ],
    ),
    Recipe(
      'Tomato Curry',
      'assets/tomato.jpg',
      5,
      [
        Ingredient(1, 'Kg', 'Rice'),
        Ingredient(1, 'Ltr', 'Oil'),
        Ingredient(4, 'Kg', 'Beef'),
        Ingredient(2, 'Pack', 'Masala'),
        Ingredient(5, 'Plates', 'Salaad'),
      ],
    ),
    Recipe(
      'Biryani',
      'assets/biryani.jpg',
      5,
      [
        Ingredient(1, 'Kg', 'Rice'),
        Ingredient(1, 'Ltr', 'Oil'),
        Ingredient(4, 'Kg', 'Beef'),
        Ingredient(2, 'Pack', 'Masala'),
        Ingredient(5, 'Plates', 'Salaad'),
      ],
    ),
  ];
}
