import 'package:flutter/material.dart';
import 'package:homebrew_dripper/models/coffee_recipe.dart';
import 'package:homebrew_dripper/screens/recipe_detail_screen.dart';
import 'package:homebrew_dripper/utils/coffee_data.dart';

class RecipeSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recipe Selection"),
      ),
      body: ListView(
        children: [
          Text("Coffee Recipes", key: Key("coffee-recipes")),
          RecipeList(),
          Text("Resources"),
          ResourceList()
        ],
      ),
    );
  }
}

class RecipeList extends StatelessWidget {
  List<CoffeeRecipe> recipes = CoffeeData.loadRecipes();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (CoffeeRecipe recipe in recipes)
          ListTile(
              title: Text(recipe.name),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RecipeDetailScreen(recipe)),
                );
              })
      ],
    );
  }
}

class ResourceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text("Coffee"),
          trailing: Icon(Icons.chevron_right),
        )
      ],
    );
  }
}
