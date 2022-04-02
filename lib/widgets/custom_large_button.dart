import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservelt/constants/my_colors.dart';

Widget customLargeButton({
  BuildContext? context,
  Function()? onTap,
  String? name,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 320.w,
      height: 40.0.h,
      decoration: BoxDecoration(
        color: MyColors.meanColor,
        borderRadius: BorderRadius.circular(8.0.r),
      ),
      child: Center(
        child: Text(
          name!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0.sp,
            fontWeight: FontWeight.w500
          ),
        ),
      ),
    ),
  );
}
