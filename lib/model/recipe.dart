import 'package:myapp/model/Ingredient.dart';

class Recipe {
  String imgUrl;
  String imgTitle;
  String description;
  List<Ingredient> ingredients;

  Recipe(this.imgUrl, this.imgTitle, this.description, this.ingredients);

  static List<Recipe> samples = [
    Recipe(
      'assets/images/200304_Olive_PadThai-ebe0f22-scaled.webp',
      'PadThai',
      'A classic and iconic Thai street food dish made with stir-fried rice noodles, shrimp (or chicken/tofu), peanuts, scrambled egg, and bean sprouts, all coated in a tangy, sweet, and savory sauce',
      [
        Ingredient(name: 'Rice noodles (Pad Thai noodles)',quantity: 200,unit: 'g',),
        Ingredient(name: 'Shrimp', quantity: 150, unit: 'g'),
        Ingredient(name: 'Firm tofu', quantity: 100, unit: 'g'),
        Ingredient(name: 'Eggs', quantity: 2, unit: ''),
        Ingredient(name: 'Bean sprouts', quantity: 1, unit: 'cup'),
        Ingredient(name: 'Garlic chives', quantity: 1, unit: 'cup'),

      ],
    ),

    Recipe(
      'assets/images/3910.webp',
      'Sweet Thai basil smash cocktail',
      'A vibrant and aromatic cocktail featuring the peppery-sweet notes of fresh Thai basil, muddled with a splash of citrus and balanced by a touch of sweetness, typically served with a base spirit like gin or vodka',
      [
        Ingredient(name: 'Thai basil leaves', quantity: 1, unit: 'handful'),
        Ingredient(name: 'Lime', quantity: 1, unit: ''),
        Ingredient(name: 'Simple syrup', quantity: 20, unit: 'ml'),
        Ingredient(name: 'White rum', quantity: 50, unit: 'ml'),
        Ingredient(name: 'Soda water', quantity: 60, unit: 'ml'),
        Ingredient(name: 'Ice cubes', quantity: 1, unit: 'cup'),
      ],
    ),

    Recipe(
      'assets/images/OLI-0519-Healthy_GreenThaiFishCurry_32208-c3cee9a.webp',
      'GreenThaiFishCurry',
      'A fragrant and flavorful Thai curry featuring tender white fish simmered in a rich, creamy sauce made from green curry paste, coconut milk, and aromatic Thai ingredients like kaffir lime leaves and Thai basil',
      [
        Ingredient(name: 'White fish fillet', quantity: 400, unit: 'g'),
        Ingredient(name: 'Green curry paste', quantity: 2, unit: 'tbsp'),
        Ingredient(name: 'Coconut milk', quantity: 2, unit: 'cups'),
        Ingredient(name: 'Vegetable stock', quantity: 1, unit: 'cup'),
        Ingredient(name: 'Thai eggplants', quantity: 4, unit: ''),
        Ingredient(name: 'Kaffir lime leaves', quantity: 3, unit: ''),
      ],
    ),

    Recipe(
      'assets/images/p110-20250121rps2352pumpkincurrypreview-8534543.webp',
      'pumpkincurry',
      'A comforting and hearty vegetarian curry featuring sweet, cubed pumpkin simmered in a rich, spiced coconut milk base. Often enriched with ingredients like ginger, red chilies, and spinach for a savory-sweet depth',
      [
        Ingredient(name: 'Pumpkin', quantity: 400, unit: 'g'),
        Ingredient(name: 'Red curry paste', quantity: 2, unit: 'tbsp'),
        Ingredient(name: 'Coconut milk', quantity: 2, unit: 'cups'),
        Ingredient(name: 'Vegetable stock', quantity: 1, unit: 'cup'),
        Ingredient(name: 'Palm sugar', quantity: 1, unit: 'tbsp'),
        Ingredient(name: 'Fish sauce', quantity: 1, unit: 'tbsp'),
      ],
    ),
  ];
}
