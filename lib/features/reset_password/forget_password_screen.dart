import 'package:academy/core/helpers/extenstions.dart';
import 'package:academy/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/helpers/spacing.dart';
import '../../core/styles/colors_manger.dart';
import '../../core/styles/text_styles_manager.dart';
import '../../core/widgets/Custom_text_form_field.dart';
import '../../core/widgets/app_text_button.dart';
import '../../core/widgets/back_screen.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackScreen(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 59.h, horizontal: 16.w),
        child: Column(
          children: [
            Text(
              'Forget password',
              textAlign: TextAlign.center,
              style: TextStylesManager.font26Bold,
            ),
            verticalSpace(10),
            Text(
              'Lorem ipsum dolor sit amet consectetur. Eu eget\n tristique quis risus quam. Aliquam quis amet\n euismod vitae sollicitudin.',
              textAlign: TextAlign.center,
              style: TextStylesManager.font16Regular,
            ),
            verticalSpace(50),
            CustomTextFormField(text: 'Email address or phone number',),
            verticalSpace(50),
            AppTextButton(
              text: 'Send',
              textStyle: TextStylesManager.font22Bold.copyWith(color: Colors.white),
              onPressed: () {
                // Navigator.pushNamed(context, Routes.resetPasswordScreen);
                context.pushNamed(
                  Routes.otpScreen
                );
              },
            ),
            Spacer(),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Back to",
                      style: TextStylesManager.font16Medium),
                  GestureDetector(
                    onTap: () {
                    },
                    child: Text(
                      " Sign In",
                      style:TextStylesManager.font16Medium.copyWith(color: ColorsManger.blueColor)
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
