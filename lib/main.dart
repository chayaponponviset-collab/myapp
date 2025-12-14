import 'package:flutter/material.dart';
import 'package:myapp/recipe_detail.dart';
import 'model/recipe.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(appBarTheme: const AppBarTheme(centerTitle: true)),
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: Text(widget.title)),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  // Hendle recipe card tap
                  // print((Recipe.samples[index].imgTitle));
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          RecipeDetail(recipe: Recipe.samples[index]),
                    ),
                  );
                },
                child: buildRecipeCard(Recipe.samples[index]),
              );
            },
            itemCount: Recipe.samples.length,
          ),
        ),
      ),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(recipe.imgUrl)),
            SizedBox(height: 8.0),
            Text(
              recipe.imgTitle,
              style: TextStyle(fontFamily: 'BerkshireSwash', fontSize: 20.0),
            ),
            
          ],
        ),
      ),
    );
  }
}
