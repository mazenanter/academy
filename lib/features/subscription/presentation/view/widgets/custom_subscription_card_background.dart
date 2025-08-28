import 'package:academy/core/styles/colors_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSubscriptionCardBackground extends StatelessWidget {
  const CustomSubscriptionCardBackground({super.key, required this.child, required this.isSelected });
  final Widget child;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: EdgeInsets.symmetric(horizontal: 16.sp , vertical: 12.sp),
        width: double.infinity,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: isSelected ? ColorsManger.primaryColor : const Color(0xFFE8E3FB)),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: child,
      ),
    );
  }
}
