import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:food_app/dummy_db.dart';
import 'package:food_app/utils/constants/color_constants.dart';
import 'package:food_app/utils/constants/image_constants.dart';
import 'package:food_app/view/global_widget/custom_receipe_card.dart';
import 'package:food_app/view/global_widget/custom_tab.dart';
import 'package:food_app/view/global_widget/custom_video_card.dart';
import 'package:food_app/view/recipee_details_screen/recipee_details_screen.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.transparent,
            title: Text("Saved recipes"),
            bottom: TabBar(
                //isScrollable: true,
                //tabAlignment: TabAlignment.start,
                labelColor: Colors.white,
                unselectedLabelColor: ColorConstants.PRIMARY_COLOR,
                indicatorSize: TabBarIndicatorSize.tab,
                // indicatorColor: Colors.red,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorConstants.PRIMARY_COLOR),
                dividerColor: Colors.transparent,
                tabs: [
                  Tab(
                    child: Text(
                      "Video",
                    ),
                  ),
                  Tab(
                    child: Text("Reciepe"),
                  ),
                ]),
          ),
          body: TabBarView(children: [
            _buildVideosTab(),
            ListView.separated(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
                itemBuilder: (context, index) => Custom_receipee_card(
                      onCardTaped: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RecipeeDetailsScreen(
                                userName: DummyDb.trendingNowList1[index]
                                    ["userName"],
                                profileurl: DummyDb.trendingNowList1[index]
                                    ["profileImage"],
                                recipetitle: DummyDb.trendingNowList1[index]
                                    ["title"],
                                image: DummyDb.trendingNowList1[index]
                                    ["imageurl"],
                                rating: DummyDb.trendingNowList1[index]
                                    ["rating"],
                              ),
                            ));
                      },
                      width: double.infinity,
                      rating: DummyDb.trendingNowList1[index]["rating"],
                      duration: DummyDb.trendingNowList1[index]["duration"],
                      title: DummyDb.trendingNowList1[index]["title"],
                      profileImage: DummyDb.trendingNowList1[index]
                          ["profileImage"],
                      userName: DummyDb.trendingNowList1[index]["userName"],
                      imageurl: DummyDb.trendingNowList1[index]["imageurl"],
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      width: 16,
                    ),
                itemCount: 10),
          ])),
    );
  }

  ListView _buildVideosTab() {
    return ListView.separated(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
        itemBuilder: (context, index) => customvideocard(
              onCardTaped: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RecipeeDetailsScreen(
                        userName: DummyDb.trendingNowList1[index]["userName"],
                        profileurl: DummyDb.trendingNowList1[index]
                            ["profileImage"],
                        recipetitle: DummyDb.trendingNowList1[index]["title"],
                        image: DummyDb.trendingNowList1[index]["imageurl"],
                        rating: DummyDb.trendingNowList1[index]["rating"],
                      ),
                    ));
              },
              width: double.infinity,
              rating: DummyDb.trendingNowList1[index]["rating"],
              duration: DummyDb.trendingNowList1[index]["duration"],
              title: DummyDb.trendingNowList1[index]["title"],
              profileImage: DummyDb.trendingNowList1[index]["profileImage"],
              userName: DummyDb.trendingNowList1[index]["userName"],
              imageurl: DummyDb.trendingNowList1[index]["imageurl"],
            ),
        separatorBuilder: (context, index) => SizedBox(
              width: 16,
            ),
        itemCount: DummyDb.trendingNowList1.length);
  }
}
