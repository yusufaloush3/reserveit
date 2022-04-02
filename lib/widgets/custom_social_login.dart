import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservelt/constants/my_colors.dart';

Widget customSocialLogin({
  BuildContext? context,
  String? image,
  Function()? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      alignment: Alignment.center,
      width: 100.0.w,
      height: 50.0.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0.r),
        color: MyColors.bgSocialLogin,
      ),
      child: Image.asset(
        image!,
        width: 25.0.w,
        height: 25.0.h,
        fit: BoxFit.fill,
      ),
    ),
  );
}
