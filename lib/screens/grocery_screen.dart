import 'package:flutter/material.dart';
import 'package:foodie/screens/empty_grocery_screen.dart';
import 'package:foodie/screens/grocery_list_screen.dart';
import 'package:provider/provider.dart';

import './grocery_item_screen.dart';
import '../models/models.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: Add a Scaffold widget
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          //TODO: Present GroceryItemScreen
          final manager = Provider.of<GroceryManager>(context, listen: false);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => GroceryItemScreen(
                      onCreate: (item) {
                        manager.addItem(item);
                        Navigator.pop(context);
                      },
                      onUpdate: (item) {})));
        },
      ),
      body: buildGroceryScreen(),
    );
  }

  //TODO: Add buildGroceryScreen
  Widget buildGroceryScreen() {
    return Consumer<GroceryManager>(builder: (context, manager, child) {
      if (manager.groceryItem.isNotEmpty) {
        //TODO: Add GroceryListScreen
        return GroceryListScreen(
          manager: manager,
        );
      } else {
        return const EmptyGroceryScreen();
      }
    });
  }
}
