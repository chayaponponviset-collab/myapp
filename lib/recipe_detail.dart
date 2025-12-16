import 'package:flutter/material.dart';
import 'package:myapp/model/recipe.dart';

class RecipeDetail extends StatefulWidget {
  // receive data from main.dart
  final Recipe recipe;

  const RecipeDetail({super.key, required this.recipe});

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  double sliderValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.recipe.imgTitle)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.recipe.imgUrl,
                height: 100,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16.0),
              Text(
                widget.recipe.imgTitle,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 20),
              Text(
                widget.recipe.description,
                style: const TextStyle(
                  fontFamily: 'BerkshireSwash',
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    final ingredient = widget.recipe.ingredients[index];
                    return Text(
                      '${(ingredient.quantity * sliderValue).toStringAsFixed(1)} ${ingredient.unit} ${ingredient.name}',
                      style: const TextStyle(fontSize: 16.0),
                    );
                  },
                  itemCount: widget.recipe.ingredients.length,
                ),
              ),
              const SizedBox(height: 20),
              Text('Servings: ${sliderValue.round()}',
                  style: Theme.of(context).textTheme.titleMedium),
              Slider(
                min: 1,
                max: 5,
                divisions: 4,
                value: sliderValue,
                label: sliderValue.round().toString(),
                onChanged: (newValue) {
                  setState(() {
                    sliderValue = newValue;
                  });
                },
                activeColor: Colors.green,
                inactiveColor: Colors.grey[300],
              ),
            ],
          ),
        ),
      ),
    );
  }
}