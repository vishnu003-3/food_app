import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/color_constants.dart';
import 'package:food_app/utils/constants/image_constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ],
      ),
    );
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
