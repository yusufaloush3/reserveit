import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservelt/constants/my_colors.dart';
import 'package:reservelt/widgets/custom_form_field.dart';
import 'package:reservelt/widgets/custom_large_button.dart';
import 'package:reservelt/widgets/custom_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

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
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText(
                fontSize: 25.sp,
                color: Colors.black87,
                text: 'Profile',
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 15,
              ),
              customText(
                text: 'First name', color: Colors.black87, fontSize:14.sp,),
              const SizedBox(
                height: 8,
              ),
              CustomFormField(
                hintText: 'John',
              ),
              const SizedBox(
                height: 8,
              ),
              customText(
                text: 'Last name', color: Colors.black87, fontSize:14.sp,),
              const SizedBox(
                height: 8,
              ),
              CustomFormField(
                hintText: 'Williams',
              ),
              const SizedBox(
                height: 8,
              ),
              customText(
                text: 'Email Address', color: Colors.black87, fontSize:14.sp,),
              const SizedBox(
                height: 8,
              ),
              CustomFormField(
                hintText: 'John_williams651@gmail.com',
              ),
              const SizedBox(
                height: 8,
              ),
              customText(
                text: 'Password', color: Colors.black87, fontSize:14.sp,),
              const SizedBox(
                height: 8,
              ),
              CustomFormField(
                hintText: '***********',
              ),
              const SizedBox(
                height: 8,
              ),
              customText(
                text: 'Confirm Password', color: Colors.black87, fontSize:14.sp,),
              const SizedBox(
                height: 8,
              ),
              CustomFormField(
                hintText: '***********',
              ),
              const SizedBox(
                height: 8,
              ),
              customText(
                text: 'Phone number', color: Colors.black87, fontSize:14.sp,),
              const SizedBox(
                height: 8,
              ),
              CustomFormField(
                hintText: '07816951351',
              ),
              const SizedBox(
                height: 8,
              ),
              customLargeButton(
                context: context,
                onTap: () {},
                name: 'Update',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
