import 'package:flutter/material.dart';
import 'package:recipe_app/models/recipe.dart';
import 'package:recipe_app/screens/recipe_details.dart';

class BuildRecipeCard extends StatelessWidget {
  final int i;
  const BuildRecipeCard({
    Key? key,
    required this.i,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => RecipeDetails(
                label: Recipe.samples[i].label,
                imgUrl: Recipe.samples[i].imgUrl,
                recipe: Recipe.samples[i],
              ),
            ),
          );
        },
        child: Card(
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(Recipe.samples[i].imgUrl)),
              ),
              Text(Recipe.samples[i].label),
            ],
          ),
        ),
      ),
    );
  }
}
