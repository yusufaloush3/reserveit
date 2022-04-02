import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservelt/constants/my_colors.dart';
import 'package:reservelt/widgets/custom_large_button.dart';
import 'package:reservelt/widgets/custom_text.dart';

class UpcomingScreen extends StatelessWidget {
  const UpcomingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reservations'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 180.h,
            decoration: BoxDecoration(
                image: const DecorationImage(
              image: NetworkImage(
                  'https://www.spicejin.com/wp-content/uploads/2021/07/Food.jpg'),
              fit: BoxFit.fill,
            )),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customText(
                    text: 'Kampai Hale',
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  customText(
                    text: 'Today - 5 pm',
                    color: Colors.black,
                    fontSize: 16.sp,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  customText(
                    text: 'Number of guests: 2',
                    color: Colors.black,
                    fontSize: 16.sp,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: SizedBox(
              width: 300.w,
              child: const Divider(
                thickness: 1,
                color: Colors.black12,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          customLargeButton(
            onTap: () {},
            name: 'Remind me when to leave',
            context: context,
          ),
          const SizedBox(
            height: 10,
          ),
          customLargeButton(
            onTap: () {},
            name: 'Cancel',
            context: context,
          ),
        ],
      ),
    );
  }
}
