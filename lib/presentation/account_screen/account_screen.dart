import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservelt/constants/my_colors.dart';
import 'package:reservelt/constants/strings.dart';
import 'package:reservelt/cubit_glabel/cubit_images.dart';
import 'package:reservelt/cubit_glabel/state_images.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      'Profile',
      'Contact us',
      'Terms and Conditions',
    ];
    List<String> routeNames = [
      profileScreen,
      contactUsScreen,
      termsAndConditionsScreen,
    ];
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              BlocConsumer<ImageCubit, ImagesStates>(
                listener: (context, state) {},
                builder: (context, state) {
                  var cubit = ImageCubit.get(context);
                  return Center(
                    child: Stack(
                      children: [
                        Container(
                          height: 180.h,
                          width: 140.w,
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 65.0.r,
                                backgroundImage: cubit.image != null
                                    ? FileImage(cubit.image!)
                                    : NetworkImage(
                                        "https://www.cibeg.com/-/media/project/cib/text-and-images/personal/ways-to-bank/online-banking/text-and-image---ways-to-bank---online-banking---day-to-day-banking-transactions.jpg",
                                      ) as ImageProvider,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'John Williams',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 5,
                          child: Container(
                            height: 40.h,
                            width: 40.w,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Center(
                              child: GestureDetector(
                                onTap: (){
                                  cubit.getImage(context);
                                },
                                child: Container(
                                  height: 35.h,
                                  width: 35.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey[300],
                                  ),
                                  child: Icon(
                                    Icons.edit,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              Container(
                height: 70.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    customContainer(
                      title: 'Reservations',
                      number: '10',
                    ),
                    customContainer(
                      title: 'Reviews',
                      number: '4',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 200.h,
                width: 330.w,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return customListTile(
                      title: titles[index],
                      context: context,
                      routeName: routeNames[index],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget customContainer({
    required String number,
    required String title,
  }) {
    return Container(
      width: 120.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: MyColors.meanColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              number,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget customListTile({
    required String title,
    required String routeName,
    required BuildContext context,
  }) {
    return Column(
      children: [
        ListTile(
          title: Text(title),
          trailing: const Icon(Icons.keyboard_arrow_right_outlined),
          onTap: () {
            Navigator.pushNamed(context, routeName);
          },
        ),
        Divider(
          thickness: 1,
          color: Colors.grey[300],
        ),
      ],
    );
  }
}
