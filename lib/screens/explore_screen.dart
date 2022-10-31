import 'package:flutter/material.dart';
import 'package:foodie/componets/friend_post_list_view.dart';

import '../componets/components.dart';
import '../models/models.dart';
import '../api/mock_foodie_service.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({Key? key}) : super(key: key);

  final mockService = MockFoodieService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
        //TODO: Add Nested List Views

        if (snapshot.connectionState == ConnectionState.done) {
          return ListView(
            scrollDirection: Axis.vertical,
            children: [
              TodayRecipeListView(recipes: snapshot.data?.todayRecipes ?? []),
              const SizedBox(
                height: 16,
              ),

              //Replaced this with FriendPostListView
              FriendPostListView(
                friendPosts: snapshot.data?.friendPosts ?? [],
              ),
            ],
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
