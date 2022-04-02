import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customTitleLogin({
  BuildContext? context,
  String? title,
}) {
  return  Align(
    alignment: Alignment.topLeft,
    child: Text(
      title!,
      style: TextStyle(
        fontSize: 26.0.sp,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
