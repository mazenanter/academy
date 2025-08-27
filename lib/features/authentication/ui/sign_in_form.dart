import 'package:academy/core/helpers/spacing.dart';
import 'package:academy/features/authentication/ui/widgets/auth_button.dart';
import 'package:flutter/material.dart';
import 'widgets/custom_text_field.dart';
import 'widgets/social_buttons.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    bool isSelected = false;
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(30),
          const Text(
            "Welcome Back!",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          verticalSpace(8),
          const Text(
            "Log in to continue your learning journey and achieve your goals",
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
                  Checkbox(value: isSelected, onChanged: (_) {}),
                  const Text("Remember Me"),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Forgot Password?"),
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
              const Text("Don’t Have an Account?"),
              TextButton(onPressed: () {}, child: const Text("Sign Up")),
            ],
          ),
        ],
      ),
    );
  }
}
