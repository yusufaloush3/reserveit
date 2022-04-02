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

class LoginScreen extends StatelessWidget {
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
                    title: "Welcome back",
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
                    'Or login with...',
                    style: TextStyle(
                      fontSize: 13.0.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),
                  CustomFormField(
                    hintText: 'Email address/phone number',
                  ),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  CustomFormField(
                    hintText: 'Password',
                    suffix: Padding(
                      padding: EdgeInsets.only(
                        top: 12.h,
                        right: 10.0.w,
                      ),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, forgetPasswordScreen);
                        },
                        child: Text(
                          'Forgot?',
                          style: TextStyle(
                            fontSize: 13.sp,
                            color: MyColors.meanColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),
                  customLargeButton(
                    onTap: (){
                      Navigator.pushNamed(context, bottomNavigations);
                    },
                    context: context,
                    name: "Sign in",
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
                              'Don’t have an account?',
                              style: TextStyle(
                                fontSize: 14.0.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 5.0.h,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, signupScreen);
                              },
                              child: Text(
                                'Sign up',
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
