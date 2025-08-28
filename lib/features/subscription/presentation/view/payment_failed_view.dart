import 'package:academy/core/styles/colors_manger.dart';
import 'package:academy/core/styles/text_styles_manager.dart';
import 'package:academy/core/utils/app_images.dart';
import 'package:academy/core/widgets/app_text_button.dart';
import 'package:academy/core/widgets/back_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class PaymentFailedView extends StatefulWidget {
  const PaymentFailedView({super.key});

  @override
  State<PaymentFailedView> createState() => _PaymentFailedViewState();
}

class _PaymentFailedViewState extends State<PaymentFailedView> {
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
                Text('Payment has failed!', style: TextStylesManager.font20Bold),
                Spacer(),
                Image.asset(Assets.paymentFailed1),
                Gap(10.h),
                Text(
                  "Your payment couldn’t be processed.",
                  style: TextStylesManager.font16Regular.copyWith(color: ColorsManger.grayColor),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Please try again or use a different payment method.",
                  style: TextStylesManager.font16Regular.copyWith(color: ColorsManger.grayColor),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                AppTextButton(
                  text: "Try Again",
                  textStyle: TextStylesManager.font22Bold.copyWith(color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
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
