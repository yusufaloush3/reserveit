import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservelt/constants/strings.dart';
import 'package:reservelt/widgets/custom_form_field.dart';
import 'package:reservelt/widgets/custom_large_button.dart';
import 'package:reservelt/widgets/custom_logo.dart';
import 'package:reservelt/widgets/custom_title_login.dart';



class PhoneNumberScreen extends StatelessWidget {


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
                    title: "Phone number",
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),
                  CustomFormField(
                    hintText: 'Phone number',
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),
                  customLargeButton(
                    onTap: (){
                      Navigator.pushNamed(context, verificationCodeScreen);
                    },
                    context: context,
                    name: "Send OTP ",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
