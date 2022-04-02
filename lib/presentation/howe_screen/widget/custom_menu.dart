import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservelt/constants/my_colors.dart';
import 'package:reservelt/widgets/custom_text.dart';

Widget customMenu() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText(
                text: 'Appetizer:',
                color: MyColors.meanColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 10,),
              ListView.builder(
                physics:const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (ctx, i) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          customText(
                            text: 'Miso soup',
                            color: Colors.black54,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          const Spacer(),
                          customText(
                            text: '\$3.50',
                            color: Colors.black54,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          const SizedBox(width: 10,),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      customText(
                        text: 'Dashi stack with miso,spring onions ,tofu,and wakame',
                        color: Colors.black54,
                        fontSize: 14.sp,
                      ),
                      const SizedBox(height: 10,),
                    ],
                  );
                },
              ),
            ],
          ),
        );
      },
    ));
}
