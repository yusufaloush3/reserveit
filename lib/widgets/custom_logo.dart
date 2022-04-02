import 'package:flutter/material.dart';
import 'package:reservelt/constants/my_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservelt/constants/my_images.dart';

Widget customLogo(BuildContext? context) {
  return Row(
    children: [
      Container(
        alignment: Alignment.center,
        width: 34.w,
        height: 34.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: MyColors.meanColor,
        ),
        child: Image.asset(
          MyImages.logo,
          fit: BoxFit.fill,
          width: 18.w,
          height: 18.h,
        ),
      ),
      SizedBox(
        width: 10.0.h,
      ),
      Image.asset(
        MyImages.resevelt,
        width: 103.w,
        height: 16.h,
        fit: BoxFit.fill,
      ),
    ],
  );
}
