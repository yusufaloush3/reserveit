import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservelt/constants/my_colors.dart';

Widget customTitleRow({
  BuildContext? context,
  String? title,
  Function()? onTap,
  String? showAll,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title!,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18.0.sp,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            showAll!,
            style: TextStyle(
              color: MyColors.meanColor,
              fontWeight: FontWeight.w500,
              fontSize: 13.0.sp,
            ),
          ),
        ),
      ],
    ),
  );
}
