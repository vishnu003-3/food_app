import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/color_constants.dart';

class Custom_botton extends StatelessWidget {
  String data;
  void Function()? onButtonpressed;
  Custom_botton({
    required this.data,
    this.onButtonpressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonpressed,
      child: Container(
        width: 77,
        height: 36,
        child: Center(
          child: Text(
            data,
            style: TextStyle(color: ColorConstants.mainWhite),
          ),
        ),
        decoration: BoxDecoration(
            color: ColorConstants.PRIMARY_COLOR,
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
