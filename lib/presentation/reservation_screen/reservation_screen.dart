import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservelt/constants/my_colors.dart';
import 'package:reservelt/constants/strings.dart';
import 'package:reservelt/widgets/custom_text.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({Key? key}) : super(key: key);

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0.w),
              child: SizedBox(
                height: 40.h,
                child: TabBar(
                  controller: _tabController,
                  indicatorColor: MyColors.meanColor,
                  labelColor: MyColors.meanColor,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Text(
                      'Upcoming',
                      style: TextStyle(fontSize: 14.sp),
                    ),
                    Text(
                      'Past',
                      style: TextStyle(fontSize: 14.sp),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  customUpcoming(),
                  customPast(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget customUpcoming() {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, upcomingScreen);
      },
      child: SizedBox(
        height: 500.h,
        width: double.infinity,
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    height: 150.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://www.spicejin.com/wp-content/uploads/2021/07/Food.jpg'),
                          fit: BoxFit.fill,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customText(
                          text: 'Kampai Hale',
                          color: Colors.white,
                          fontSize: 15.sp,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        customText(
                          text: 'Today - 5 pm',
                          color: Colors.white,
                          fontSize: 15.sp,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget customPast() {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, pastScreen);
      },
      child: SizedBox(
        height: 500.h,
        width: double.infinity,
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    height: 150.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://www.spicejin.com/wp-content/uploads/2021/07/Food.jpg'),
                          fit: BoxFit.fill,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customText(
                          text: 'Harrisa & Byblos Private -Car Day Trip',
                          color: Colors.white,
                          fontSize: 15.sp,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        customText(
                          text: '3 Nov 2021 - 1pm',
                          color: Colors.white,
                          fontSize: 15.sp,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
