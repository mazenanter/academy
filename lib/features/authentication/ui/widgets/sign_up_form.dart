import 'package:academy/core/helpers/spacing.dart';
import 'package:academy/core/styles/text_styles_manager.dart';
import 'package:academy/core/utils/dialog_utils.dart';
import 'package:academy/core/utils/validators.dart';
import 'package:academy/features/authentication/ui/cubit/authentication_states.dart';
import 'package:academy/features/authentication/ui/cubit/authentication_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_button.dart';
import 'custom_text_field.dart';
import 'social_buttons.dart';

class SignUpForm extends StatelessWidget {
  final AuthViewModel authViewModel;
  const SignUpForm({super.key, required this.authViewModel});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: BlocListener(
        bloc: authViewModel,
        listener: (context, state) {
          if (state is ShowLoading) {
            return DialogUtils.showLoading(context: context);
          } else if (state is ErrorState) {
            DialogUtils.hideLoading(context);
            return DialogUtils.showMessage(
              context: context,
              message: state.errorMessage,
              title: "Error",
              posActionName: 'Ok',
            );
          } else if (state is SuccessState) {
            DialogUtils.hideLoading(context);
            DialogUtils.showMessage(
              context: context,
              message: state.response.message ?? 'Registered Successfully',
              title: "Success",
              posActionName: 'Ok',
            );
          }
        },
        child: Form(
          key: authViewModel.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              verticalSpace(30),
              Text("Create Account", style: TextStylesManager.font22Bold),
              verticalSpace(8),
              Text(
                "Sign up to start your learning journey",
                style: TextStylesManager.font16Medium,
              ),
              verticalSpace(30),

              CustomTextField(
                controller: authViewModel.nameController,
                hint: "Full Name",
                icon: Icons.person,
                validator: (p0) => AppValidators.validateFullName(p0),
              ),
              verticalSpace(15),
              CustomTextField(
                controller: authViewModel.emailController,
                hint: "Email Address Or Phone Number",
                icon: Icons.mail,
                keyboardType: TextInputType.emailAddress,
                validator: (p0) => AppValidators.validateEmail(p0),
              ),
              verticalSpace(15),
              CustomTextField(
                controller: authViewModel.passwordController,
                hint: "Password",
                icon: Icons.lock,
                obscure: true,
                validator: (p0) => AppValidators.validatePassword(p0),
              ),

              verticalSpace(20),
              AuthButton(
                text: "Sign Up",
                onPressed: () {
                  authViewModel.register();
                },
              ),

              verticalSpace(30),
              const SocialButtons(),
              verticalSpace(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already Have an Account?",
                    style: TextStylesManager.font14LighterGreyRegular,
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
                      "Sign In",
                      style: TextStylesManager.font14LighterGreyRegular
                          .copyWith(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
