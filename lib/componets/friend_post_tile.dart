import 'package:flutter/material.dart';
import 'package:foodie/componets/circle_image.dart';
import 'package:foodie/models/models.dart';

class FriendPostTile extends StatelessWidget {
  final Post post;

  const FriendPostTile({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleImage(
          imageProvider: AssetImage('${post.profileImageUrl}'),
          imageRadius: 20,
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(post.comment),
            Text(
              '${post.timestamp} mins ago',
              style: const TextStyle(
                  fontFamily: 'Raleway', fontWeight: FontWeight.w400),
            ),
          ],
        ))
      ],
    );
  }
}
