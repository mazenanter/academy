import 'package:academy/core/routing/routes.dart';
import 'package:academy/core/styles/colors_manger.dart';
import 'package:academy/core/styles/text_styles_manager.dart';
import 'package:academy/core/utils/app_images.dart';
import 'package:academy/core/widgets/app_text_button.dart';
import 'package:academy/core/widgets/back_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class PaymentSuccessView extends StatefulWidget {
  const PaymentSuccessView({super.key});

  @override
  State<PaymentSuccessView> createState() => _PaymentSuccessViewState();
}

class _PaymentSuccessViewState extends State<PaymentSuccessView> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // disable landscape mode
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackScreen(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 26.w),
            child: Column(
              children: [
                Gap(30.h),
                Text(
                  'Payment Successful!',
                  style: TextStylesManager.font20Bold,
                ),
                Spacer(),
                Image.asset(Assets.paymentSuccess1),
                Gap(10.h),
                Text(
                  "Your subscription has been placed. ",
                  style: TextStylesManager.font16Regular.copyWith(
                    color: ColorsManger.grayColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "We will send you an email with your subscription details",
                  style: TextStylesManager.font16Regular.copyWith(
                    color: ColorsManger.grayColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                AppTextButton(
                  text: "Done",
                  textStyle: TextStylesManager.font22Bold.copyWith(color: Colors.white),
                  onPressed: () {
                    // navigate to home screen
                  },
                  borderRadius: 24,
                ),
                Gap(80.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
