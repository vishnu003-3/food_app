import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/color_constants.dart';

class popular_category extends StatelessWidget {
  const popular_category({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 231,
          width: 150,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 66),
                    Text(
                      "Pepper sweetcorn ramen",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 14),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text("time",
                          style: TextStyle(
                            color: ColorConstants.lightGrey,
                          )),
                    ),
                    // SizedBox(height: 4),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 12, right: 12, bottom: 12),
                      child: Row(
                        children: [
                          Text("10 Mins"),
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
                    color: Color(0xffAAAAAA))),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&w=600"),
            radius: 55,
            backgroundColor: Colors.yellow,
          ),
        )
      ],
    );
  }
}
