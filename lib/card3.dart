import 'package:flutter/material.dart';

import 'foodie_theme.dart';

class Card3 extends StatefulWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  State<Card3> createState() => _Card3State();
}

class _Card3State extends State<Card3> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/mag2.png'), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            )),
        child: Stack(children: [
          //added dark overlay BoxDecoration
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
              borderRadius: const BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
          ),
          //added container, column, icon, and text
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.book,
                  color: Colors.white,
                  size: 40,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Recipe Treats',
                  style: FoodieTheme.darkTextTheme.headline2,
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),

          //added center widget with chip widget
          Center(
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 12,
              children: [
                Chip(
                  label: Text(
                    'Healthy',
                    style: FoodieTheme.darkTextTheme.bodyText1,
                  ),
                  backgroundColor: Colors.black.withOpacity(0.7),
                  onDeleted: () {
                    print('delete');
                  },
                ),
                Chip(
                  label: Text(
                    'Vegan',
                    style: FoodieTheme.darkTextTheme.bodyText1,
                  ),
                  backgroundColor: Colors.black.withOpacity(0.7),
                  onDeleted: () {
                    print('delete');
                  },
                ),
                Chip(
                  label: Text(
                    'Tomatoes',
                    style: FoodieTheme.darkTextTheme.bodyText1,
                  ),
                  backgroundColor: Colors.black.withOpacity(0.7),
                ),
                Chip(
                  label: Text(
                    'Ugwu',
                    style: FoodieTheme.darkTextTheme.bodyText1,
                  ),
                  backgroundColor: Colors.black.withOpacity(0.7),
                ),
                Chip(
                  label: Text(
                    'Junk',
                    style: FoodieTheme.darkTextTheme.bodyText1,
                  ),
                  backgroundColor: Colors.black.withOpacity(0.7),
                ),
                Chip(
                  label: Text(
                    'Wheat',
                    style: FoodieTheme.darkTextTheme.bodyText1,
                  ),
                  backgroundColor: Colors.black.withOpacity(0.7),
                ),
                Chip(
                  label: Text(
                    'Soup',
                    style: FoodieTheme.darkTextTheme.bodyText1,
                  ),
                  backgroundColor: Colors.black.withOpacity(0.7),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
