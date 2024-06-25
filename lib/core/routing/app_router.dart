import 'package:flutter/material.dart';
import 'package:speedshiping/core/routing/routes.dart';
import 'package:speedshiping/features/onboarding/ui/screens/onboardingscreen.dart';



class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingscreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
