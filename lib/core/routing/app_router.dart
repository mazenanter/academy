import 'package:academy/core/routing/routes.dart';
import 'package:academy/features/onboarding/onboarding_screen.dart';
import 'package:academy/features/subscription/presentation/view/subscription_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.subscriptionScreen:
        return MaterialPageRoute(builder: (_) => const SubscriptionView());
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
