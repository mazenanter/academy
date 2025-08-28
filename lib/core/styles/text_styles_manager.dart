import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors_manger.dart';

class TextStylesManager {
  static TextStyle font26Bold = TextStyle(
    fontSize: 26.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font22Bold = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font16Medium = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: Color(0xff6F6A80),
  );
  static TextStyle font16Regular = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManger.greyColor,
  );
  static TextStyle font14Regular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManger.lightGreyColor,
  );
}
