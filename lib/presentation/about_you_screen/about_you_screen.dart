import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservelt/widgets/custom_form_field.dart';
import 'package:reservelt/widgets/custom_large_button.dart';
import 'package:reservelt/widgets/custom_logo.dart';
import 'package:reservelt/widgets/custom_title_login.dart';



class AboutYouScreen extends StatelessWidget {


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
                    title: "About you",
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),
                  CustomFormField(
                    hintText: 'First name',
                  ),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  CustomFormField(
                    hintText: 'Last name',
                  ),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  CustomFormField(
                    hintText: 'DD-MM-YYYY',
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),
                  customLargeButton(
                    context: context,
                    name: "Finish",
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
