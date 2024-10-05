import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/color_constants.dart';

class Custom_receipee_card extends StatelessWidget {
  final String rating;
  final double width;
  final String imageurl;
  final String duration;
  final String title;
  final String profileImage;
  void Function()? onCardTaped;
  final String userName;
  Custom_receipee_card({
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
        child: Column(
          children: [
            Container(
              height: 200,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      // image: NetworkImage(
                      //     "https://images.pexels.com/photos/1099680/pexels-photo-1099680.jpeg"),
                      image: NetworkImage(imageurl))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      CircleAvatar(
                        backgroundColor: ColorConstants.mainWhite,
                        child: Icon(
                          Icons.more_horiz,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    "How to make Italian\nSpanghetti at home",
                    style: TextStyle(
                        color: ColorConstants.mainWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    "12 Ingredients | 40 min",
                    style: TextStyle(
                        color: ColorConstants.mainWhite,
                        fontWeight: FontWeight.normal,
                        fontSize: 12),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(Icons.more_horiz)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    // backgroundImage: AssetImage(ImageConstants.AVATHARNIKKI),
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
            )
          ],
        ),
      ),
    );
  }
}
