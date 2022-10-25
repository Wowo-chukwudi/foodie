import 'package:flutter/material.dart';
import 'package:foodie/card2.dart';
import 'package:foodie/card3.dart';

import 'card1.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
// Added state variables and functions here
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    //Replaced with Card1
    const Card1(),
    //Replaced with Card2
    const Card2(),
    //Replaced with Card3
    const Card3(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Foodie',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),

      // Showing Selected tab
      body: pages[_selectedIndex],

      //Added bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,

        //Set selected tab bar
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,

        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Card'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Card2'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Card3'),
        ],
      ),
    );
  }
}
