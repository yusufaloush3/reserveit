import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservelt/constants/my_colors.dart';
import 'package:reservelt/constants/strings.dart';
import 'package:reservelt/presentation/howe_screen/widget/custom_carousel.dart';
import 'package:reservelt/presentation/howe_screen/widget/custom_list_experience.dart';
import 'package:reservelt/presentation/howe_screen/widget/custom_list_trending.dart';
import 'package:reservelt/presentation/howe_screen/widget/custom_title_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0.w),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 25.0,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Places to visit in',
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Beirut ',
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                color: MyColors.meanColor,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Navigator.pushNamed(context, placedMapScreen)),
                        ]),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Column(
              children: [
                CustomCarousel(),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  child: customTitleRow(
                      context: context,
                      title: 'Trending this week',
                      showAll: 'View all',
                      onTap: () {
                        print('seeAll');
                      }),
                ),
                customListingTrending(context: context),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  child: customTitleRow(
                      context: context,
                      title: 'Experience something new',
                      showAll: 'View all',
                      onTap: () {
                        print('seeAll');
                      }),
                ),
                customListExperience(context: context),
              ],
            ),
          ],
        )),
      ),
    );
  }
}



