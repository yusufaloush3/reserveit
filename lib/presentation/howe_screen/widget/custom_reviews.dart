import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservelt/constants/my_colors.dart';
import 'package:reservelt/widgets/custom_text.dart';

Widget customReviews() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 120.h,
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                    height: double.infinity,
                    width: 110.w,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customText(
                            text: '4.8',
                            color: MyColors.meanColor,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          RatingBar.builder(
                            ignoreGestures: true,
                            itemSize: 14.w,
                            initialRating: 4.8,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 1.0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: MyColors.meanColor,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          customText(
                            text: '27',
                            color: Colors.black26,
                            fontSize: 15.sp,
                          ),
                        ],
                      ),
                    )),
                // const SizedBox(
                //   width: 15,
                // ),
                Expanded(
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ListView.builder(
                        physics:const NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Container(
                              height: 15,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  customText(
                                    text: '${index + 1}',
                                    color: Colors.black,
                                    fontSize: 10.sp,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  RatingBarIndicator(
                                    rating: 1,
                                    itemBuilder: (context, index) => Container(
                                      height: 8,
                                      width: 35.w,
                                      decoration: BoxDecoration(
                                        color: MyColors.meanColor,
                                        borderRadius: BorderRadius.only(
                                          topRight: index == 5
                                              ? Radius.circular(4.r)
                                              : Radius.circular(0),
                                          bottomRight: index == 5
                                              ? Radius.circular(4.r)
                                              : Radius.circular(0),
                                          topLeft: index == 0
                                              ? Radius.circular(4.r)
                                              : Radius.circular(0),
                                          bottomLeft: index == 0
                                              ? Radius.circular(4.r)
                                              : Radius.circular(0),
                                        ),
                                      ),
                                    ),
                                    itemCount: 6,
                                    itemSize: 28.0.w,
                                    direction: Axis.horizontal,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
         ListView.builder(
           physics:const NeverScrollableScrollPhysics(),
           shrinkWrap: true,
           itemCount: 5,
           itemBuilder: (context,index){
             return Column(
               children: [
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     CircleAvatar(
                       radius: 25.r,
                       backgroundImage: NetworkImage(
                         "https://www.cibeg.com/-/media/project/cib/text-and-images/personal/ways-to-bank/online-banking/text-and-image---ways-to-bank---online-banking---day-to-day-banking-transactions.jpg",
                       ),
                     ),
                     const SizedBox(
                       width: 12,
                     ),
                     Container(
                       height: 60,
                       width: 100,
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Column(
                             children: [
                               customText(
                                 text: 'Jonathan M.',
                                 color: Colors.black,
                                 fontSize: 14.sp,
                                 textOverflow: TextOverflow.ellipsis,
                               ),
                               const SizedBox(height: 5,),
                               Row(
                                 children: [
                                   const Icon(
                                     Icons.star,
                                     color: Colors.black87,
                                     size: 20,
                                   ),
                                   const SizedBox(width: 2,),
                                   Center(
                                     child: customText(
                                       text: '5.0',
                                       color: Colors.black,
                                       fontSize: 14.sp,
                                     ),
                                   ),
                                 ],
                               )
                             ],
                           ),
                         ],
                       ),
                     ),
                     Spacer(),
                     customText(
                       text: '2 days ago',
                       color: Colors.black54,
                       fontSize: 14.sp,
                     ),
                     const SizedBox(
                       width: 10,
                     ),
                   ],
                 ),
                 const SizedBox(height: 10,),
                 customText(
                   text: 'what a food ! what a food ! what a food ! what a food ! what a food ! what a food ! what a food ! what a food ! what a food what a food ! ! what a food ! what a food ! what a food !',
                   color: Colors.black,
                   fontSize: 14.sp,
                 ),
                 Divider(thickness: 1,color: Colors.black12,),
               ],
             );
           },
         ),
        ],
      ),
    ),
  );
}
