import 'package:flutter/material.dart';
import 'package:speedshiping2/core/routing/routes.dart';
import 'package:speedshiping2/features/auth/login/ui/screens/login_screen.dart';
import 'package:speedshiping2/features/auth/login/ui/screens/register_screen.dart';
import 'package:speedshiping2/features/home/ui/home_screen.dart';
import 'package:speedshiping2/features/nav_bar/nav_bar.dart';
import 'package:speedshiping2/features/notification/notification_screen.dart';
import 'package:speedshiping2/features/orders/ui/orders_screen.dart';
import 'package:speedshiping2/features/profile/profile_screen.dart';
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
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.ordersScreen:
        return MaterialPageRoute(
          builder: (_) => const OrdersScreen(),
        );
      case Routes.notificationScreen:
        return MaterialPageRoute(
          builder: (_) => const NotificationScreen(),
        );
      case Routes.profileScreen:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
        );
      case Routes.navScreen:
        return MaterialPageRoute(
          builder: (_) => const NavBar(),
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
