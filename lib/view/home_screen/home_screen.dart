import 'package:flutter/material.dart';
import 'package:food_app/dummy_db.dart';
import 'package:food_app/utils/constants/color_constants.dart';
import 'package:food_app/view/global_widget/custom_video_card.dart';
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
        length: 6,
        initialIndex: 1,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                // # section 1 - title
                _titleSection(),
                // # section 2 - trending now
                _trendingNowSection(),

                //# section 3 - video player
                _videoplayerSection(),

                //# section 4 - popular category
                _popularCategorySection()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column _popularCategorySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "Popular category",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          height: 34,
          width: 387,
          child: TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
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
                    "salad",
                  ),
                ),
                Tab(
                  child: Text("Breakfast"),
                ),
                Tab(
                  child: Text("Apetizer"),
                ),
                Tab(
                  child: Text("noodle"),
                ),
                Tab(
                  child: Text("Lunch"),
                ),
              ]),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 231,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => PopularCategoryCard(
                    imageurl: DummyDb.popularCategoryList[index]["image"],
                    title: DummyDb.popularCategoryList[index]['title'],
                    duration: DummyDb.popularCategoryList[index]['duration'],
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    width: 16,
                  ),
              itemCount: DummyDb.popularCategoryList.length),
        ),
      ],
    );
  }

  SizedBox _videoplayerSection() {
    return SizedBox(
      width: double.infinity,
      height: 256,
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 0),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => customvideocard(
                onCardTaped: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecipeeDetailsScreen(
                          profileurl: DummyDb.trendingNowList[index]
                              ["imageurl"],
                          recipetitle: DummyDb.trendingNowList[index]["tittle"],
                          image: DummyDb.trendingNowList[index]["imageurl"],
                          rating: DummyDb.trendingNowList[index]["rating"],
                          userName: DummyDb.trendingNowList[index]["username"],
                        ),
                      ));
                },
                width: double.infinity,
                rating: DummyDb.trendingNowList[index]["rating"],
                duration: DummyDb.trendingNowList[index]["duration"],
                profileImage: DummyDb.trendingNowList[index]["profileurl"],
                imageurl: DummyDb.trendingNowList[index]["imageurl"],
                userName: DummyDb.trendingNowList[index]["username"],
                title: DummyDb.trendingNowList[index]["tittle"],
              ),
          separatorBuilder: (context, index) => SizedBox(
                width: 16,
              ),
          itemCount: DummyDb.trendingNowList.length),
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

class PopularCategoryCard extends StatelessWidget {
  String imageurl;
  String title;
  String duration;

  PopularCategoryCard({
    required this.duration,
    required this.imageurl,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 231,
          width: 150,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 66),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 14),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text("Time",
                        style: TextStyle(
                          color: ColorConstants.lightGrey,
                        )),
                  ),
                  // SizedBox(height: 4),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                    child: Row(
                      children: [
                        Text(duration),
                        Spacer(),
                        CircleAvatar(
                          child: Icon(
                            Icons.bookmark_outline_rounded,
                            size: 15,
                          ),
                          radius: 12,
                          backgroundColor: Colors.white,
                        )
                      ],
                    ),
                  )
                ],
              ),
              height: 176,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: ColorConstants.lightGrey)),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: CircleAvatar(
            radius: 55,
            backgroundColor: ColorConstants.lightGrey,
            backgroundImage: NetworkImage(imageurl),
          ),
        )
      ],
    );
  }
}

class _trendingNowList {}
