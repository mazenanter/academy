import 'package:academy/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
        verticalSpace(12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Image.asset(
                "assets/google.png",
                width: 30.sp,
                height: 30.sp,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset(
                "assets/facebook.png",
                width: 30.sp,
                height: 30.sp,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset(
                "assets/apple.png",
                width: 30.sp,
                height: 30.sp,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
