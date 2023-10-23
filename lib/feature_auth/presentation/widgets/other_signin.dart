import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget otherSignIn(double width){
  return    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      GestureDetector(
        child: SvgPicture.asset("asset/icons/facebook.svg"),
        onTap: () {},
      ),
      SizedBox(
        width: width * 0.16,
      ),
      GestureDetector(
        child: SvgPicture.asset("asset/icons/google.svg"),
        onTap: () {},
      ),
    ],
  );
}