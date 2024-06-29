import 'package:flutter/material.dart';
import 'package:speedshiping2/core/routing/routes.dart';
import 'package:speedshiping2/features/auth/login/ui/screens/login_screen.dart';
import '../../features/onboarding/ui/screens/language_screen.dart';
import '../../features/onboarding/ui/screens/onboardingscreen.dart';
import '../../features/onboarding/ui/screens/opening_screen.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingscreen(),
        );

      case Routes.languageScreen:
        return MaterialPageRoute(
          builder: (_) =>
              const LanguageScreen(),
        );
      case Routes.openingScreen:
        return MaterialPageRoute(
          builder: (_) => const OpeningScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
