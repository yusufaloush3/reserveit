import 'package:flutter/material.dart';
import 'package:reservelt/constants/my_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFormField extends StatelessWidget {
  String? hintText;
  bool security;
  TextInputType inputType;
  String? validation;
  Function(dynamic)? saved;
  int maxLine;
  Widget? prefix;
  Widget? suffix;
  Function(String)? onChanged;
  int? number;

  CustomFormField({
    this.hintText,
    this.inputType = TextInputType.text,
    this.saved,
    this.validation,
    this.security = false,
    this.maxLine = 1,
    this.prefix,
    this.suffix,
    this.onChanged,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320.0.w,
      child: TextFormField(
        onChanged: onChanged,
        decoration: InputDecoration(
          prefixIcon: prefix,
          suffixIcon: suffix,
          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          hintText: hintText,
          hintStyle: TextStyle(
            color: MyColors.hintText,
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide:
                  BorderSide(color: MyColors.borderInputColor, width: 1)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide:
                  BorderSide(color: MyColors.borderInputColor, width: 1)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide:
                  BorderSide(color: MyColors.borderInputColor, width: 1)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide:
                  BorderSide(color: MyColors.borderInputColor, width: 1)),
        ),
        validator: (value) {
          if (value!.isEmpty || value.length < number!) {
            return validation;
          }
          return null;
        },
        onSaved: saved,
        obscureText: security,
        maxLines: maxLine,
        keyboardType: inputType,
      ),
    );
  }
}
