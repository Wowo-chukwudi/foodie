import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/models.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Replaced and add layout widgets
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //Added empty image
          Flexible(
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Image.asset('assets/foodie_assets/empty_list.png'),
            ),
          ),
          //Added empty screen title
          const Text(
            'No Groceries Available',
            style: TextStyle(fontSize: 21.0),
          ),
          const SizedBox(
            height: 16,
          ),
          //Added empty screen subtitle
          const Text(
            'Shopping for ingredients?\n'
            'Tap the + button to write them down',
            textAlign: TextAlign.center,
          ),
          //Added browse recipe button
          MaterialButton(
              textColor: Colors.white,
              child: const Text('Browse Recipes'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: Colors.green,
              onPressed: () {
                Provider.of<TabManager>(context, listen: false)
                    .goToRecipes(); //Provider.of accesses the model object(TabMAnager). goToRecipes() sets the index to the Recipes tab
              })
        ],
      )),
    );
  }
}
