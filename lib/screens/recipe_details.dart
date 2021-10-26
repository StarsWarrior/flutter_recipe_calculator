import 'package:flutter/material.dart';
import 'package:recipe_app/models/recipe.dart';

class RecipeDetails extends StatefulWidget {
  final String label;
  final String imgUrl;
  final Recipe recipe;
  const RecipeDetails({
    Key? key,
    required this.label,
    required this.imgUrl,
    required this.recipe,
  }) : super(key: key);

  @override
  _RecipeDetailsState createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.label),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(widget.imgUrl),
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.recipe.ingredient.length,
                itemBuilder: (ctx, i) {
                  final ingredient = widget.recipe.ingredient[i];
                  return Text(
                    '${ingredient.quantity * _sliderVal} ${ingredient.measure} ${ingredient.name}',
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  );
                },
              ),
            ),
            Slider(
              min: 1,
              max: 10,
              divisions: 10,
              activeColor: Colors.green,
              inactiveColor: Colors.red,
              value: _sliderVal.toDouble(),
              onChanged: (val) {
                setState(() {
                  _sliderVal = val.toInt();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
