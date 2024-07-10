import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:speedshiping2/core/theming/app_colors.dart';
import 'package:speedshiping2/features/home/ui/home_screen.dart';
import 'package:speedshiping2/features/notification/notification_screen.dart';
import 'package:speedshiping2/features/profile/profile_screen.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: const [
        HomeScreen(),
        NotificationScreen(),
        ProfileScreen()
      ],
      items: [
        PersistentBottomNavBarItem(icon: Icon(Icons.home,size: MediaQuery.of(context).size.width * 0.08),activeColorPrimary: AppColors.appbarColor,inactiveColorPrimary:AppColors.myWhite ),
        PersistentBottomNavBarItem(icon: Icon(Icons.notifications,size: MediaQuery.of(context).size.width * 0.08,color: AppColors.appbarColor),activeColorPrimary: AppColors.appbarColor,inactiveColorPrimary:AppColors.myWhite),
        PersistentBottomNavBarItem(icon: Icon(Icons.person,size: MediaQuery.of(context).size.width * 0.08,color: AppColors.appbarColor),activeColorPrimary: AppColors.appbarColor,inactiveColorPrimary:AppColors.myWhite),
      ],
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style3,
      navBarHeight: MediaQuery.of(context).size.height * 0.08,
      backgroundColor: Colors.black,

    );
  }
}
