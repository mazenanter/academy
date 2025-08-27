import 'package:academy/core/routing/routes.dart';
import 'package:academy/features/onboarding/onboarding_screen.dart';
import 'package:academy/screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.screren:
        return MaterialPageRoute(builder: (_) => const Screen());
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
