import 'package:flutter/material.dart';
import 'package:speedshiping2/core/routing/routes.dart';
import 'package:speedshiping2/features/auth/login/ui/screens/login_screen.dart';
import 'package:speedshiping2/features/auth/login/ui/screens/register_screen.dart';
import 'package:speedshiping2/features/home/ui/home_screen.dart';
import 'package:speedshiping2/features/nav_bar/nav_bar.dart';
import 'package:speedshiping2/features/notification/notification_screen.dart';
import 'package:speedshiping2/features/orders/ui/screens/order_details_screen.dart';
import 'package:speedshiping2/features/orders/ui/screens/orders_screen.dart';
import 'package:speedshiping2/features/orders/ui/screens/ready_order_screen.dart';
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
          builder: (_) => HomeScreen(myContext: _,),
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
      case Routes.readyOrdersScreen:
        return MaterialPageRoute(
          builder: (context) => const ReadyOrderScreen(),
        );
      case Routes.orderDetailsScreen:
        return MaterialPageRoute(
          builder: (context) => const OrderDetailsScreen(),
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
