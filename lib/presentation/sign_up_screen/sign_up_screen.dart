import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservelt/constants/my_colors.dart';
import 'package:reservelt/constants/my_images.dart';
import 'package:reservelt/constants/strings.dart';
import 'package:reservelt/widgets/custom_form_field.dart';
import 'package:reservelt/widgets/custom_large_button.dart';
import 'package:reservelt/widgets/custom_logo.dart';
import 'package:reservelt/widgets/custom_social_login.dart';
import 'package:reservelt/widgets/custom_title_login.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: 650.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 30.0.h,
                  ),
                  customLogo(context),
                  SizedBox(
                    height: 60.0.h,
                  ),
                  customTitleLogin(
                    context: context,
                    title: "Create an account",
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customSocialLogin(
                        context: context,
                        image: MyImages.googleLogo,
                        onTap: () {
                          print('google');
                        },
                      ),
                      customSocialLogin(
                        context: context,
                        image: MyImages.facebookLogo,
                        onTap: () {
                          print('facebook');
                        },
                      ),
                      customSocialLogin(
                        context: context,
                        image: MyImages.appleLogo,
                        onTap: () {
                          print('apple');
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),
                  Text(
                    'Or register with email and phone number',
                    style: TextStyle(
                      fontSize: 13.0.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),
                  CustomFormField(
                    hintText: 'Email address',
                  ),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  CustomFormField(
                    hintText: 'Password',
                  ),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  CustomFormField(
                    hintText: 'Confirm password',
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),
                  customLargeButton(
                    onTap: (){
                      Navigator.pushNamed(context, phoneNumberScreen);
                    },
                    context: context,
                    name: "Sign up",
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Already have an account?',
                              style: TextStyle(
                                fontSize: 14.0.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 5.0.h,
                            ),
                            GestureDetector(
                              onTap: (){
                                 Navigator.pop(context);
                              },
                              child: Text(
                                'Sign in',
                                style: TextStyle(
                                    fontSize: 15.0.sp,
                                    fontWeight: FontWeight.w500,
                                    color: MyColors.meanColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
