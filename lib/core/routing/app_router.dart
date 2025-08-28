import 'package:academy/core/routing/routes.dart';
import 'package:academy/features/onboarding/onboarding_screen.dart';
import 'package:academy/features/subscription/presentation/view/choose_payment_method_view.dart';
import 'package:academy/features/subscription/presentation/view/credit_card_details_view.dart';
import 'package:academy/features/subscription/presentation/view/payment_failed_view.dart';
import 'package:academy/features/subscription/presentation/view/payment_success_view.dart';
import 'package:academy/features/subscription/presentation/view/subscription_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.subscriptionScreen:
        return MaterialPageRoute(builder: (_) => const SubscriptionView());
      case Routes.choosePaymentMethodScreen:
        return MaterialPageRoute(
          builder: (_) => const ChoosePaymentMethodView(),
        );
      case Routes.paymentSuccessScreen:
        return MaterialPageRoute(builder: (_) => const PaymentSuccessView());
      case Routes.paymentFailedScreen:
        return MaterialPageRoute(builder: (_) => const PaymentFailedView());
      case Routes.creditCardDetailsScreen:
        return MaterialPageRoute(builder: (_) => const CreditCardDetailsView());
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
