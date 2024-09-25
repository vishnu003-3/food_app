import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/color_constants.dart';

class Custom_botton extends StatelessWidget {
  String data;
  final double? height;
  final double? width;
  void Function()? onButtonpressed;
  Custom_botton({
    required this.data,
    this.onButtonpressed,
    this.height,
    this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonpressed,
      child: Container(
        width: width,
        height: height,
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
