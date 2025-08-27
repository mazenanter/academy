import 'package:academy/core/helpers/spacing.dart';
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
          const Text(
            "Create Account",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          verticalSpace(8),
          const Text("Sign up to start your learning journey"),
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
        ],
      ),
    );
  }
}
