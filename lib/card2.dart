import 'package:flutter/material.dart';

import 'foodie_theme.dart';
import 'authorcard.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  final String name = 'Blezzi goat';
  final String title = 'Smoothie Connoisseur';
  final String recipe = 'Recipe';
  final String recipeName = 'Smoothie';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/mag5.png'), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            )),
        child: Column(
          children: [
            // Added Authorcard
            const AuthorCard(
              authorName: 'Chukwudi',
              title: 'Smoothie Connoisseur',
              imageProvider: AssetImage('assets/author_katz.jpeg'),
            ),
            // added positioned stack

            Expanded(
                child: Stack(
              children: [
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: Text(
                    'Recipe',
                    style: FoodieTheme.lightTextTheme.headline1,
                  ),
                ),
                Positioned(
                  bottom: 70,
                  left: 16,
                  child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothies',
                        style: FoodieTheme.lightTextTheme.headline1,
                      )),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
