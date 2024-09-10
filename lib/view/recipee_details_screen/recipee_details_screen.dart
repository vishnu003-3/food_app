import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/color_constants.dart';
import 'package:food_app/utils/constants/image_constants.dart';
import 'package:food_app/view/global_widget/custom_button_card.dart';

class RecipeeDetailsScreen extends StatelessWidget {
  String recipeeTitile;
  String image;
  String rating;
  String bg;
  String userName;

  RecipeeDetailsScreen(
      {required this.image,
      required this.rating,
      required this.recipeeTitile,
      required this.bg,
      required this.userName,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipeeTitile),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(image))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.star),
                    SizedBox(
                      width: 4,
                    ),
                    Text(rating),
                    SizedBox(
                      width: 8,
                    ),
                    Text("(300 reviews)")
                  ],
                ),
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(bg),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(userName),
                  Spacer(),
                  Custom_botton(
                    data: "follow",
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.all(13.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Incredients",
                      style: TextStyle(
                          color: ColorConstants.mainBlack,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    Text("5 items")
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsetsDirectional.symmetric(
                      horizontal: 20, vertical: 12),
                  height: 76,
                  decoration: BoxDecoration(color: ColorConstants.lightGrey),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(ImageConstants.HOME_SCREEN_FOOD),
                      Text("bread"),
                      Text("200g")
                    ],
                  )),
              SizedBox(
                height: 12,
              ),
              Container(
                  padding: EdgeInsetsDirectional.symmetric(
                      horizontal: 20, vertical: 12),
                  height: 76,
                  decoration: BoxDecoration(color: ColorConstants.lightGrey),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(ImageConstants.SPLASH_SCREEN_LOGO),
                      Text("egg"),
                      Text("200g")
                    ],
                  )),
              SizedBox(
                height: 12,
              ),
              Container(
                  padding: EdgeInsetsDirectional.symmetric(
                      horizontal: 20, vertical: 12),
                  height: 76,
                  decoration: BoxDecoration(color: ColorConstants.lightGrey),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(ImageConstants.HOME_SCREEN_FOOD),
                      Text("milk"),
                      Text("200g")
                    ],
                  )),
              SizedBox(
                height: 12,
              ),
              Container(
                  padding: EdgeInsetsDirectional.symmetric(
                      horizontal: 20, vertical: 12),
                  height: 76,
                  decoration: BoxDecoration(color: ColorConstants.lightGrey),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(ImageConstants.HOME_SCREEN_FOOD),
                      Text("butter"),
                      Text("200g")
                    ],
                  )),
              SizedBox(
                height: 12,
              ),
              Container(
                  padding: EdgeInsetsDirectional.symmetric(
                      horizontal: 20, vertical: 12),
                  height: 76,
                  decoration: BoxDecoration(color: ColorConstants.lightGrey),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(ImageConstants.HOME_SCREEN_FOOD),
                      Text("vanila"),
                      Text("200g")
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
