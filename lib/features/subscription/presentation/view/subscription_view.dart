import 'package:academy/core/widgets/back_screen.dart';
import 'package:academy/features/subscription/presentation/view/widgets/subscription_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubscriptionView extends StatelessWidget {
  const SubscriptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackScreen(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.w),
            child: SubscriptionViewBody(),
          ),
        ),
      ),
    );
  }
}
