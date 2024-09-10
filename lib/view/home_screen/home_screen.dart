import 'package:flutter/material.dart';
import 'package:food_app/dummy_db.dart';
import 'package:food_app/utils/constants/color_constants.dart';
import 'package:food_app/utils/constants/image_constants.dart';
import 'package:food_app/view/global_widget/custom_video_card.dart';
import 'package:food_app/view/home_screen/widgets/popular_category.dart';
import 'package:food_app/view/recipee_details_screen/recipee_details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                // # section 1 - title
                _titleSection(),
                // # section 2 - trending now
                _trendingNowSection(),
                //# section 3 - video player
                SizedBox(
                  height: 16,
                ),
                // video
                SizedBox(
                    height: 200,
                    child: ListView.separated(
                        padding:
                            EdgeInsetsDirectional.symmetric(horizontal: 20),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => customvideocard(
                              onCardTaped: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          RecipeeDetailsScreen(
                                        bg: DummyDb.trendingNowList[index]
                                            ["profileImage"],
                                        recipeeTitile: DummyDb
                                            .trendingNowList[index]["title"],
                                        image: DummyDb.trendingNowList[index]
                                            ["imageurl"],
                                        rating: DummyDb.trendingNowList[index]
                                            ["rating"],
                                        userName: DummyDb.trendingNowList[index]
                                            ["userName"],
                                      ),
                                    ));
                              },
                              width: 280,
                              rating: DummyDb.trendingNowList[index]["rating"],
                              duration: DummyDb.trendingNowList[index]
                                  ["duration"],
                              title: DummyDb.trendingNowList[index]["title"],
                              profileImage: DummyDb.trendingNowList[index]
                                  ["profileImage"],
                              userName: DummyDb.trendingNowList[index]
                                  ["userName"],
                              imageurl: DummyDb.trendingNowList[index]
                                  ["imageurl"],
                            ),
                        separatorBuilder: (context, index) => SizedBox(
                              width: 16,
                            ),
                        itemCount: 10)),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Popular Category",
                      style: TextStyle(
                          color: ColorConstants.mainBlack,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TabBar(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        dividerHeight: 0,
                        isScrollable: true,
                        tabs: [
                          Tab(
                            child: Text("Salad"),
                          ),
                          Tab(
                            child: Text("BreakFast"),
                          ),
                          Tab(
                            child: Text("Appetizer"),
                          ),
                          Tab(
                            child: Text("Noodles"),
                          ),
                          Tab(
                            child: Text("Lunch"),
                          ),
                        ]),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 231,
                      child: ListView.separated(
                          itemBuilder: (context, index) => popular_category(),
                          separatorBuilder: (context, index) => SizedBox(
                                width: 16,
                              ),
                          itemCount: 3),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column _trendingNowSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Text(
                "Treding Now 🔥",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                "See all",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.arrow_forward_outlined,
                color: Colors.redAccent,
              )
            ],
          ),
        ),
      ],
    );
  }

  Column _titleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
          child: Text(
            "Find best recipes \nfor cooking",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 2),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: ColorConstants.lightGrey,
              ),
              hintText: "Search recipes",
              hintStyle: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  color: ColorConstants.lightGrey),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  gapPadding: 2,
                  borderSide: BorderSide(color: ColorConstants.lightGrey)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  gapPadding: 2,
                  borderSide: BorderSide(color: ColorConstants.lightGrey)),
            ),
          ),
        ),
      ],
    );
  }
}
