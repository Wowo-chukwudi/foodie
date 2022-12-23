import 'package:flutter/material.dart';

//TabManger extends ChangeNotifier which allows the object to provide change notifications to its listeners.
class TabManager extends ChangeNotifier {
  int selectedTab = 0; //this keeps track of which tab is tapped.

  //this modifies the current tab index and stores the index of the new tab the user tapped
  void goToTab(index) {
    selectedTab = index;
    notifyListeners(); //It notifies all widgets listening to this state
  }

  void goToRecipes() {
    selectedTab = 1;
    notifyListeners(); //Notifies all widgets listening to TabManager that Recipes is the selected tab
  }
}
