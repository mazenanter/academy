import 'package:academy/core/styles/colors_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.text,
    required this.textStyle,
    this.horizontalPadding,
    this.verticalPadding,
    this.borderRaduis,
    this.buttonHeight,
    this.buttonWidth,
    this.backgroundColor,
    required this.onPressed,
  });
  final String text;
  final TextStyle textStyle;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? borderRaduis;
  final double? buttonHeight;
  final double? buttonWidth;
  final Color? backgroundColor;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding?.w ?? 12.w,
            vertical: verticalPadding?.h ?? 10.h,
          ),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRaduis ?? 5),
            side: BorderSide(width: 1, color: ColorsManger.primaryColor),
          ),
        ),
        fixedSize: WidgetStatePropertyAll(
          Size(buttonWidth?.w ?? double.maxFinite, buttonHeight?.h ?? 55.h),
        ),
        backgroundColor: WidgetStatePropertyAll(
          backgroundColor ?? ColorsManger.primaryColor,
        ),
      ),
      onPressed: onPressed,
      child: Text(text, style: textStyle),
    );
  }
}
