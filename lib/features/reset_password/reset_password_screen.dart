import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/helpers/spacing.dart';
import '../../core/styles/colors_manager.dart';
import '../../core/styles/text_styles_manager.dart';
import '../../core/widgets/Custom_text_form_field.dart';
import '../../core/widgets/app_text_button.dart';
import '../../core/widgets/back_screen.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackScreen(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 59.h, horizontal: 16.w),
        child: SingleChildScrollView(
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
              CustomTextFormField(
                text: 'Password',
                obscure: true,
                icon: Icons.lock,
              ),
              verticalSpace(16),
              CustomTextFormField(
                text: 'Confirm Password',
                obscure: true,
                icon: Icons.lock,
              ),
              verticalSpace(50),
              AppTextButton(
                text: 'Confirm',
                textStyle: TextStylesManager.font22Bold.copyWith(
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              verticalSpace(250),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Back to", style: TextStylesManager.font16Medium),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        " Sign In",
                        style: TextStylesManager.font16Medium.copyWith(
                          color: ColorsManager.blueColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
