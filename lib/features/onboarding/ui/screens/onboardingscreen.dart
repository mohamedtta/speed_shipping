import 'package:flutter/material.dart';
import 'package:speedshiping2/core/routing/routes.dart';
import 'package:speedshiping2/features/onboarding/ui/screens/language_screen.dart';

import '../../../../core/routing/app_router.dart';
import '../../../../core/shared_widgets/my_button.dart';
import '../widgets/onboarding_text_container.dart';
import '../widgets/onboaring_upper_circle.dart';

class OnBoardingscreen extends StatelessWidget {
  const OnBoardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageController _pageController = PageController();
    List<String> textContainer = [
      '"Enjoy the fastest delivery in Egypt with our app – precision and speed in every shipment!"',
      '"Reliable and fast delivery in Egypt – our app gives you peace of mind with every shipment!"',
      '"Our app is safe and secure – every shipment is in good hands!"'
    ];
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: PageView.builder(
              itemCount: textContainer.length,
              controller: _pageController,
              itemBuilder: (context, i) {
                return Stack(
                  children: [
                    OnboaringUpperCircle(text: ''),
                    Positioned(
                        bottom: MediaQuery.of(context).size.height * 0.2,
                        left: (MediaQuery.of(context).size.width - 258) / 2,
                        child: OnboardingTextContainer(
                          text: textContainer[i],
                        ))
                  ],
                );
              }),
        ),
        MyButton(
            text: 'Next',
            onPressed: () {
              if (_pageController == 2.0) {
                Navigator.pushNamed(context, Routes.languageScreen);
              } else {
                _pageController.nextPage(
                    duration: const Duration(seconds: 1), curve: Curves.easeIn);
              }
            })
      ],
    ));
  }
}
