import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:food_app/dummy_db.dart';
import 'package:food_app/view/global_widget/custom_video_card.dart';
import 'package:food_app/view/recipee_details_screen/recipee_details_screen.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent,
          title: Text("Saved recipes"),
        ),
        body: ListView.separated(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
            itemBuilder: (context, index) => customvideocard(
                  onCardTaped: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipeeDetailsScreen(
                            userName: DummyDb.trendingNowList[index]
                                ["userName"],
                            bg: DummyDb.trendingNowList[index]["profileImage"],
                            recipeeTitile: DummyDb.trendingNowList[index]
                                ["title"],
                            image: DummyDb.trendingNowList[index]["imageurl"],
                            rating: DummyDb.trendingNowList[index]["rating"],
                          ),
                        ));
                  },
                  width: double.infinity,
                  rating: DummyDb.trendingNowList[index]["rating"],
                  duration: DummyDb.trendingNowList[index]["duration"],
                  title: DummyDb.trendingNowList[index]["title"],
                  profileImage: DummyDb.trendingNowList[index]["profileImage"],
                  userName: DummyDb.trendingNowList[index]["userName"],
                  imageurl: DummyDb.trendingNowList[index]["imageurl"],
                ),
            separatorBuilder: (context, index) => SizedBox(
                  width: 16,
                ),
            itemCount: 10));
  }
}
