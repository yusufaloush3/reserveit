import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservelt/constants/my_colors.dart';
import 'package:reservelt/widgets/custom_form_field.dart';
import 'package:reservelt/widgets/custom_large_button.dart';
import 'package:reservelt/widgets/custom_text.dart';

class PastScreen extends StatelessWidget {
  const PastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reservations'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
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
                      text: 'Harrisa & Byblos Private -Car Day Trip',
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
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 13.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText(
                      text: 'Give feedback',
                      color: MyColors.meanColor,
                      fontSize: 15.sp,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    RatingBar.builder(
                      itemSize: 20.w,
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: MyColors.meanColor,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    CustomFormField(
                      hintText: 'leave a review',
                      maxLine: 7,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            customLargeButton(
              onTap: () {},
              name: 'Submit',
              context: context,
            ),
            const SizedBox(
              height: 10,
            ),
            customLargeButton(
              onTap: () {},
              name: 'Book again',
              context: context,
            ),
            const SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
