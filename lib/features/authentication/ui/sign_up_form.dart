import 'package:academy/core/helpers/spacing.dart';
import 'package:academy/core/styles/colors_manager.dart';
import 'package:academy/core/styles/text_styles_manager.dart';
import 'package:flutter/material.dart';
import 'widgets/custom_text_field.dart';
import 'widgets/auth_button.dart';
import 'widgets/social_buttons.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(30),
          Text("Create Account", style: TextStylesManager.font22Bold),
          verticalSpace(8),
          Text("Sign up to start your learning journey",
              style: TextStylesManager.font16Medium),
          verticalSpace(30),

          const CustomTextField(hint: "Full Name", icon: Icons.person),
          verticalSpace(15),
          const CustomTextField(
            hint: "Email Address Or Phone Number",
            icon: Icons.mail,
          ),
          verticalSpace(15),
          const CustomTextField(
            hint: "Password",
            icon: Icons.lock,
            obscure: true,
          ),

          verticalSpace(20),
          const AuthButton(text: "Sign Up"),

          verticalSpace(30),
          const SocialButtons(),
          verticalSpace(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already Have an Account?",
                style: TextStylesManager.font14Regular,
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.transparent,
                  overlayColor: Colors.transparent,
                  surfaceTintColor: Colors.transparent,
                  disabledForegroundColor: Colors.transparent,
                  disabledBackgroundColor: Colors.transparent,
                ),
                child: Text("Sign In", style: TextStylesManager.font14Regular.copyWith(color: ColorsManager.primaryColor)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
