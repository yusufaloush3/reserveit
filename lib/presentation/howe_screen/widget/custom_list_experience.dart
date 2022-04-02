import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



Widget customListExperience({BuildContext? context}) {
  return Padding(
    padding: EdgeInsets.only(bottom: 20.0.h),
    child: Container(
       height: 150.0.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(
                right: 5.w,
                left: 20.w,
                top: 20.h,
              ),
              child: Center(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0.r),
                        color: Colors.green,
                      ),
                      width: 300.w,
                      height: 150.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0.r),
                        child: Image(
                            width: 320.w,
                            height: 150.h,
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1466978913421-dad2ebd01d17?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80')),
                      ),
                    ),
                    Positioned(
                      top: 10.0.h,
                      left: 10.0.w,
                      right: 10.0.w,
                      child: Container(
                        width: 320.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star_outline, color: Colors.white,),
                                Text('4.50', style: TextStyle(color: Colors.white, fontSize: 13.0, fontWeight: FontWeight.w400,),),
                              ],
                            ),
                            Text("\$ $index", style: TextStyle(color: Colors.white )),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10.0.h,
                      left: 8.0.w,
                      child: Text(
                        'Restaurants$index',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    ),
  );
}