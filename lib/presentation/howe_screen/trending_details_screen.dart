import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:reservelt/constants/my_colors.dart';
import 'package:reservelt/presentation/howe_screen/widget/custom_photos.dart';
import 'package:reservelt/presentation/howe_screen/widget/custom_info.dart';
import 'package:reservelt/presentation/howe_screen/widget/custom_menu.dart';
import 'package:reservelt/presentation/howe_screen/widget/custom_reverseit.dart';
import 'package:reservelt/presentation/howe_screen/widget/custom_reviews.dart';
import 'package:reservelt/widgets/custom_text.dart';

class TrendingDetailsScreen extends StatefulWidget {
  const TrendingDetailsScreen({Key? key}) : super(key: key);

  @override
  State<TrendingDetailsScreen> createState() => _TrendingDetailsScreenState();
}

class _TrendingDetailsScreenState extends State<TrendingDetailsScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController =  TabController(length: 5, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height : 600.h,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: 180.h,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                      image: NetworkImage(
                          'https://www.spicejin.com/wp-content/uploads/2021/07/Food.jpg'),
                      fit: BoxFit.fill,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 30.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Center(
                        child: customText(
                          text: '\$\$\$',
                          color: Colors.white,
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    customText(
                      text: 'Sushi Bar',
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    Spacer(),
                    Container(
                      height: 30.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.black87,
                            size: 20,
                          ),
                          Center(
                            child: customText(
                              text: '4.5',
                              color: Colors.black,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        height: 30.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Icon(
                            MdiIcons.sort,
                            color: Colors.black87,
                          ),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
                color: Colors.black12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0.w),
                child: SizedBox(
                  height: 40.h,
                  child: TabBar(
                    isScrollable: true,
                    controller: _tabController,
                    indicatorColor: MyColors.meanColor,
                    labelColor: MyColors.meanColor,
                    unselectedLabelColor: Colors.grey[500],
                    tabs: [
                      Text(
                        'Reverselt!',
                        style: TextStyle(fontSize: 14.sp),
                      ),
                      Text(
                        'Info',
                        style: TextStyle(fontSize: 14.sp),
                      ),
                      Text(
                        'Menu',
                        style: TextStyle(fontSize: 14.sp),
                      ),
                      Text(
                        'Reviews',
                        style: TextStyle(fontSize: 14.sp),
                      ),
                      Text(
                        'Photos',
                        style: TextStyle(fontSize: 14.sp),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    CustomReservit(),
                    CustomInfo(),
                    customMenu(),
                    customReviews(),
                    CustomPhoto(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
