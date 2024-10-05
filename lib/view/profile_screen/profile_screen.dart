import 'package:flutter/material.dart';
import 'package:food_app/dummy_db.dart';
import 'package:food_app/utils/constants/color_constants.dart';
import 'package:food_app/utils/constants/image_constants.dart';
import 'package:food_app/view/global_widget/custom_receipe_card.dart';

import 'package:food_app/view/global_widget/custom_tab.dart';
import 'package:food_app/view/global_widget/custom_video_card.dart';
import 'package:food_app/view/recipee_details_screen/recipee_details_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "My Profile",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          actions: [Icon(Icons.more_horiz)],
        ),
        body: Column(
          children: [
            _buildProfileSection(),
            _buildDataSection(),
            Divider(),
            Custom_tab(),
            Expanded(
              child: TabBarView(
                children: [
                  _buildVIDEOcard(),
                  _buildReciepeSection(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  ListView _buildReciepeSection() {
    return ListView.separated(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
        itemBuilder: (context, index) => Custom_receipee_card(
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

  ListView _buildVIDEOcard() {
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

  Padding _buildDataSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "Recipe",
                style: TextStyle(
                    color: ColorConstants.lightGrey,
                    fontSize: 12,
                    fontWeight: FontWeight.normal),
              ),
              Text(
                "3",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "Videos",
                style: TextStyle(
                    color: ColorConstants.lightGrey,
                    fontSize: 12,
                    fontWeight: FontWeight.normal),
              ),
              Text(
                "13",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "Followers",
                style: TextStyle(
                    color: ColorConstants.lightGrey,
                    fontSize: 12,
                    fontWeight: FontWeight.normal),
              ),
              Text(
                "140k",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "Following",
                style: TextStyle(
                    color: ColorConstants.lightGrey,
                    fontSize: 12,
                    fontWeight: FontWeight.normal),
              ),
              Text(
                "120",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding _buildProfileSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(ImageConstants.DP),
              radius: 50,
            ),
            Spacer(),
            Container(
              height: 36,
              width: 107,
              decoration: BoxDecoration(
                  border:
                      Border.all(color: ColorConstants.PRIMARY_COLOR, width: 1),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "Edit profile",
                  style: TextStyle(
                      color: ColorConstants.PRIMARY_COLOR,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Alessandra Blair",
            style: TextStyle(
                color: ColorConstants.mainBlack, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Hello world I’m Alessandra Blair, I’m \nfrom Italy 🇮🇹 I love cooking so much!",
            style: TextStyle(
                color: ColorConstants.lightBlack,
                fontSize: 14,
                fontWeight: FontWeight.normal),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}
