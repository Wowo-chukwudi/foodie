import 'package:flutter/material.dart';
import 'package:foodie/foodie_theme.dart';

import 'circle_image.dart';

class AuthorCard extends StatefulWidget {
  const AuthorCard(
      {Key? key,
      required this.authorName,
      required this.title,
      this.imageProvider})
      : super(key: key);

  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavorited = false;
  bool _likedRecipe = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: widget.imageProvider,
                imageRadius: 28,
              ),
              const SizedBox(
                width: 6,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.authorName,
                    style: FoodieTheme.lightTextTheme.headline2,
                  ),
                  Text(
                    widget.title,
                    style: FoodieTheme.lightTextTheme.headline3,
                  ),
                ],
              )
            ],
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _isFavorited = !_isFavorited;
                _likedRecipe = !_likedRecipe;
              });
              final snackBar = SnackBar(
                content: Text(_likedRecipe
                    ? 'You liked this recipe'
                    : 'You unliked this recipe'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            icon: Icon(_isFavorited ? Icons.favorite : Icons.favorite_border),
            iconSize: 25,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
