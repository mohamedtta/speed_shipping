import 'package:flutter/material.dart';

import '../../../../core/theming/app_theme.dart';

class OnboardingTextContainer extends StatelessWidget {
  String text;
  OnboardingTextContainer({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(20),
      width: 263,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Text(
            text,
            style: AppTheme.onBoardingFontStyle,
          ),
          Image.asset('assets/images/cars.png')
        ],
      ),
    );
  }
}
