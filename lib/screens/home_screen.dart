import 'package:flutter/material.dart';
import 'package:recipe_app/models/recipe.dart';

import 'package:recipe_app/widgets/build_recipe_card.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (ctx, i) {
            return BuildRecipeCard(
              i: i,
            );
          },
        ),
      ),
    );
  }
}
