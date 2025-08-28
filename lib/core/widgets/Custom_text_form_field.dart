import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/colors_manger.dart';
import '../styles/text_styles_manager.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.text,
    this.textStyle,
    this.horizontalPadding,
    this.verticalPadding,
    this.borderRadius,
    this.height,
    // this.buttonWidth,
    this.icon,
    this.iconColor,
    this.backgroundColor,
    this.obscure,
  });
  final String text;
  final TextStyle? textStyle;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? borderRadius;
  final double? height;
  final IconData? icon;
  final Color? iconColor;
  // final double? buttonWidth;
  final Color? backgroundColor;
  final bool? obscure;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:height?? 55.h,
      child: TextFormField(
        obscureText: obscure?? false,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          filled: true, // enable fill color
          fillColor:backgroundColor?? ColorsManger.whiteColor,
          isDense: true,
          contentPadding: EdgeInsets.symmetric(vertical:verticalPadding?.h?? 20.h,horizontal: horizontalPadding?.w??8.w),
          prefixIcon: Icon(
            icon??Icons.email,
            size: 22.sp,
            color: iconColor??ColorsManger.lightGreyColor,
          ),
          // labelText: "Email address or phone number",
          hintText: text,
          hintStyle:textStyle?? TextStylesManager.font14Regular,
          // labelStyle: TextStylesManager.font14Regular,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius??10.r),
            borderSide: BorderSide(color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius??10.r),
            borderSide: BorderSide(
              color: Colors.white,
            ), // non-focused border
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius??10.r),
            borderSide: BorderSide(
              color: Colors.white,
            ), // focused border
          ),
        ),
      ),
    );
  }
}
