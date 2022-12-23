import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'foodie_theme.dart';
import 'home.dart';
import 'models/models.dart';

void main() {
  // 1
  runApp(const Foodie());
}

class Foodie extends StatelessWidget {
  // 2
  const Foodie({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Declared theme from foodie_theme.dart
    final theme = FoodieTheme.dark();
    // Applied the Home widget
    // 3
    return MaterialApp(
      // Added theme to MaterialAPp
      title: 'Foodie',
      theme: theme,
      // 4
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => TabManager(),
          ),
          //Added GroceryManager Provider
          ChangeNotifierProvider(create: (context) => GroceryManager()),
        ],
        child: const Home(),
      ),
    );
  }
}
