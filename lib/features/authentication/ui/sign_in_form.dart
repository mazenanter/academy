import 'package:academy/core/helpers/spacing.dart';
import 'package:academy/core/styles/colors_manager.dart';
import 'package:academy/core/styles/text_styles_manager.dart';
import 'package:academy/features/authentication/ui/widgets/auth_button.dart';
import 'package:flutter/material.dart';
import 'widgets/custom_text_field.dart';
import 'widgets/social_buttons.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(30),
          Text("Welcome Back!", style: TextStylesManager.font22Bold),
          verticalSpace(8),
          Text(
            "Log in to continue your learning journey and achieve your goals",
            style: TextStylesManager.font16Medium,
          ),
          verticalSpace(30),

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

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: isSelected,
                    onChanged: (_) {
                      isSelected = !isSelected;
                      print(isSelected);
                      setState(() {});
                    },
                  ),
                  Text("Remember Me", style: TextStylesManager.font14Regular),
                ],
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
                child: Text(
                  "Forgot Password?",
                  style: TextStylesManager.font14Regular,
                ),
              ),
            ],
          ),
          verticalSpace(20),
          const AuthButton(text: "Login"),

          verticalSpace(30),
          const SocialButtons(),
          verticalSpace(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don’t Have an Account?",
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
                child: Text("Sign Up", style: TextStylesManager.font14Regular.copyWith(color: ColorsManager.primaryColor)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
