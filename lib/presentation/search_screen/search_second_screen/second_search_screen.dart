import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservelt/constants/strings.dart';

class SearchSecondScreen extends StatelessWidget {
  const SearchSecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search',
          style: TextStyle(
            fontSize: 16.0.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20.0.h),
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, searchListScreen, arguments: 'restaurants');
                },
                child: Padding(
                  padding: EdgeInsets.only(bottom: 15.0.h),
                  child: Center(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0.r),
                            color: Colors.green,
                          ),
                          width: 320.w,
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
                          bottom: 10.0.h,
                          left: 8.0.w,
                          child: Text(
                            'Restaurants',
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
                ),
              );
            }),
      ),
    );
  }
}
