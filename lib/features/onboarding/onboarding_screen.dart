import 'package:academy/core/helpers/extenstions.dart';
import 'package:academy/core/helpers/spacing.dart';
import 'package:academy/core/routing/routes.dart';
import 'package:academy/core/styles/colors_manager.dart';
import 'package:academy/core/styles/text_styles_manager.dart';
import 'package:academy/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/onboarding_image.png'),
              verticalSpace(60),
              Text(
                'Start Your Learning Journey',
                style: TextStylesManager.font26Bold,
              ),
              verticalSpace(10),
              Text(
                'Your personal learning hub - track your\nprogress, earn certificates, and unlock new\nopportunities',
                textAlign: TextAlign.center,
                style: TextStylesManager.font16Medium,
              ),
              verticalSpace(69),
              AppTextButton(
                text: 'Get Started',
                textStyle: TextStylesManager.font22Bold.copyWith(
                  color: Colors.white,
                ),
                onPressed: () {
                  context.pushNamedAndRemoveUntil(Routes.authentication);
                },
              ),
              verticalSpace(8),
              AppTextButton(
                borderRaduis: 10,
                backgroundColor: Colors.white,

                text: 'Login',
                textStyle: TextStylesManager.font22Bold.copyWith(
                  color: ColorsManager.primaryColor,
                ),
                onPressed: () {
                  context.pushNamedAndRemoveUntil(Routes.authentication);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
