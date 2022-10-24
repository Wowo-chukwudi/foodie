import 'package:flutter/material.dart';

import 'foodie_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread';
  final String chef = 'Chef Chu';

  @override
  Widget build(BuildContext context) {
    return Center(
      //Decorated Card1 Container
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/mag1.png'), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            )),
        //Added a stack of texts
        child: Stack(
          children: [
            Text(
              category,
              style: FoodieTheme.darkTextTheme.bodyText1,
            ),
            Positioned(
              child: Text(
                title,
                style: FoodieTheme.darkTextTheme.headline2,
              ),
              top: 20.0,
            ),
            Positioned(
              child: Text(
                description,
                style: FoodieTheme.darkTextTheme.bodyText1,
              ),
              bottom: 30.0,
              right: 0,
            ),
            Positioned(
              child: Text(
                chef,
                style: FoodieTheme.darkTextTheme.bodyText1,
              ),
              bottom: 10.0,
              right: 0,
            ),
          ],
        ),
      ),
    );
  }
}
