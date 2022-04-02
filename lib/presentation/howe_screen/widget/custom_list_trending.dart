import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservelt/constants/strings.dart';

Widget customListingTrending({
  BuildContext? context,
}) {
  return Container(
    height: 230.0.h,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, trendingDetailsScreen);
            },
            child: Padding(
              padding: EdgeInsets.only(
                right: 5.w,
                left: 20.w,
                top: 20.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 180.w,
                        height: 180.h,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10.0.r),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0.r),
                          child: Image(
                            width: 150.w,
                            height: 150.h,
                            fit: BoxFit.fill,
                            image: NetworkImage(
                              'https://images.unsplash.com/photo-1533777857889-4be7c70b33f7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80',
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 6.0.h,
                        left: 10.0.w,
                        right: 10.0.w,
                        child: Container(
                          width: 320.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_outline,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '4.50',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Text("\$ $index",
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0.h,),
                  Text(
                    'Sushi Bar',
                    style: TextStyle(
                      fontSize: 14.0.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
          );
        }),
  );
}
