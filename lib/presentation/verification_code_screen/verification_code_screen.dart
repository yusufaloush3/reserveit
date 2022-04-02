import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:reservelt/constants/my_colors.dart';
import 'package:reservelt/constants/strings.dart';
import 'package:reservelt/widgets/custom_form_field.dart';
import 'package:reservelt/widgets/custom_large_button.dart';
import 'package:reservelt/widgets/custom_logo.dart';
import 'package:reservelt/widgets/custom_title_login.dart';

class VerificationCodeScreen extends StatelessWidget {
  String? smsCode;
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
                    title: "One-Time Password",
                  ),
                  SizedBox(
                    height: 5.0.h,
                  ),
                  Text(
                    'An OTP has been sent to you provided phone number. Enter the 4-digit code below.',
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: PinCodeTextField(
                      appContext: context,
                      autoFocus: true,
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.number,
                      length: 4,
                      obscureText: false,
                      animationType: AnimationType.scale,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(10.r),
                        fieldHeight: 50,
                        fieldWidth: 70,
                        borderWidth: 1,
                        activeColor: Colors.grey,
                        inactiveColor: MyColors.meanColor,
                        inactiveFillColor: Colors.white,
                        activeFillColor: Colors.white,
                        selectedColor: MyColors.meanColor,
                        selectedFillColor: Colors.white,
                      ),
                      animationDuration: Duration(milliseconds: 300),
                      backgroundColor: Colors.white,
                      enableActiveFill: true,
                      onCompleted: (submitCode) {
                        smsCode = submitCode;
                        print("Completed");
                      },
                      onChanged: (value) {
                        print(value);
                      },
                      beforeTextPaste: (text) {
                        print("Allowing to paste $text");
                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                        return true;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),
                  customLargeButton(
                    onTap: () {
                      Navigator.pushNamed(context, aboutYouScreen);
                    },
                    context: context,
                    name: "Next",
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
