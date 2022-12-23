import 'package:flutter/material.dart';
import 'package:foodie/componets/recipes_grid_view.dart';

import '../componets/components.dart';
import '../models/models.dart';
import '../api/mock_foodie_service.dart';

class RecipeScreen extends StatelessWidget {
  final exploreService = MockFoodieService();
  RecipeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: exploreService.getRecipes(),
        builder: (context, AsyncSnapshot<List<SimpleRecipe>> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            //TODO: Add RecipeGridView Here
            return RecipesGridView(recipes: snapshot.data ?? []);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
