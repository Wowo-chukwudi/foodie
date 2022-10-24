import 'package:flutter/material.dart';
import 'package:foodie/foodie_theme.dart';

import 'circle_image.dart';

class AuthorCard extends StatelessWidget {
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
  Widget build(BuildContext context) {
    //TODO: Replace this container
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: imageProvider,
                imageRadius: 28,
              ),
              const SizedBox(
                width: 6,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    authorName,
                    style: FoodieTheme.lightTextTheme.headline2,
                  ),
                  Text(
                    title,
                    style: FoodieTheme.lightTextTheme.headline3,
                  ),
                ],
              )
            ],
          ),
          IconButton(
            onPressed: () {
              const snackBar = SnackBar(
                content: Text('You liked this recipe'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            icon: const Icon(Icons.favorite_border),
            iconSize: 25,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
