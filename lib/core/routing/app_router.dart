import 'package:academy/core/routing/routes.dart';
import 'package:academy/features/onboarding/onboarding_screen.dart';
import 'package:academy/features/reset_password/forget_password_screen.dart';
import 'package:academy/features/reset_password/otp_screen.dart';
import 'package:academy/features/reset_password/reset_password_screen.dart';
// import 'package:academy/screen.dart';
import 'package:flutter/material.dart';

import '../../features/authentication/ui/auth_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.authentication:
        return MaterialPageRoute(builder: (_) => const AuthScreen());
      case Routes.forgetPasswordScreen:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordScreen());
      case Routes.resetPasswordScreen:
        return MaterialPageRoute(builder: (_) => const ResetPasswordScreen());
      case Routes.otpScreen:
        return MaterialPageRoute(builder: (_) => const OtpScreen());
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
