import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservelt/constants/my_colors.dart';
import 'package:reservelt/widgets/custom_form_field.dart';
import 'package:reservelt/widgets/custom_large_button.dart';
import 'package:reservelt/widgets/custom_text.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText(
                fontSize: 25.sp,
                color: Colors.black87,
                text: 'Contact Us',
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 200.w,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.call,
                          color: MyColors.meanColor,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Icon(
                          Icons.mail,
                          color: MyColors.meanColor,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        customText(
                          text: '0161 0364 894613',
                          color: Colors.black,
                          fontSize: 14.sp,
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        customText(
                          text: 'Support@reserveit.com',
                          color: Colors.black,
                          fontSize: 14.sp,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomFormField(
                hintText: 'Type your message...',
                maxLine: 10,
              ),
              const SizedBox(
                height: 20,
              ),
              customLargeButton(
                context: context,
                onTap: () {},
                name: 'Send',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
