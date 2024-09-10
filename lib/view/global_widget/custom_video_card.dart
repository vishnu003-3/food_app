import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/color_constants.dart';
import 'package:food_app/utils/constants/image_constants.dart';

class customvideocard extends StatelessWidget {
  String rating;
  double width;
  String imageurl;
  String duration;
  String title;
  String profileImage;
  void Function()? onCardTaped;
  String userName;

  customvideocard({
    required this.rating,
    required this.width,
    required this.imageurl,
    required this.duration,
    required this.title,
    required this.profileImage,
    this.onCardTaped,
    required this.userName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTaped,
      child: SizedBox(
        width: 280,
        height: 256,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              width: 280,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(imageurl))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        height: 28,
                        width: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: ColorConstants.lightBlack.withOpacity(.3),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: ColorConstants.mainWhite,
                              size: 14,
                            ),
                            Text(
                              rating,
                              style: TextStyle(
                                  color: ColorConstants.mainWhite,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: ColorConstants.mainWhite,
                        child: Icon(Icons.bookmark_outline),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: ColorConstants.lightBlack.withOpacity(.3),
                    child: Icon(
                      Icons.play_arrow,
                      color: ColorConstants.mainWhite,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        height: 28,
                        width: 58,
                        child: Text(
                          duration,
                          style: TextStyle(
                              color: ColorConstants.mainWhite,
                              fontWeight: FontWeight.normal,
                              fontSize: 12),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ColorConstants.lightBlack.withOpacity(.3))),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                Icon(Icons.more_horiz)
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage(profileImage),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  userName,
                  style: TextStyle(color: ColorConstants.lightGrey),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
