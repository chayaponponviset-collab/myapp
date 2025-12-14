import 'package:flutter/material.dart';
import 'package:myapp/model/recipe.dart';

class RecipeDetail extends StatelessWidget {
  // receive data from main.dart
  final Recipe recipe;

  const RecipeDetail({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recipe Detail')),
      body: Column(
        children: [
          Image.asset(
            recipe.imgUrl,
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 16.0),
          Text(recipe.imgTitle, style: TextStyle(color: Colors.green, fontSize: 20 , fontWeight: FontWeight.bold),),
          Text(recipe.description, style: TextStyle(fontFamily: 'BerkshireSwash', fontSize: 20.0 , backgroundColor: Colors.yellow),),
        ],
      ),
    );
  }
}
