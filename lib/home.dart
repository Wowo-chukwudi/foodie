import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/models.dart';
import 'package:foodie/screens/explore_screen.dart';
import 'package:foodie/screens/grocery_screen.dart';
import 'package:foodie/screens/recipe_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static List<Widget> pages = <Widget>[
    // Replace with ExploreScreen
    const ExploreScreen(),
    // Replaced with RecipesScreen
    RecipeScreen(),
    // Replaced with GroceryScreen
    const GroceryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<TabManager>(
      //This wraps all the widgets inside Consumer. When TabManager changes, the widgets below ir will rebuild
      builder: (context, tabManager, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Foodie',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),

          //TODO: Replace body
          body:
              // IndexedStack(
              //   index: tabManager.selectedTab,
              //   children: pages,
              // )
              pages[tabManager.selectedTab],
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor:
                Theme.of(context).textSelectionTheme.selectionColor,
            currentIndex: tabManager.selectedTab,
            onTap: (index) {
              tabManager.goToTab(index);
            },
            items: <BottomNavigationBarItem>[
              const BottomNavigationBarItem(
                icon: Icon(Icons.explore),
                label: 'Explore',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'Recipes',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: 'To Buy',
              ),
            ],
          ),
        );
      },
    );
  }
}
