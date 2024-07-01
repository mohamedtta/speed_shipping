import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speedshiping2/core/routing/routes.dart';
import '../../../../core/shared_widgets/my_button.dart';
import '../widgets/onboarding_text_container.dart';
import '../widgets/onboaring_upper_circle.dart';

class OnBoardingscreen extends StatelessWidget {
  const OnBoardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    PageController _pageController = PageController();
    List<String> textContainer = [
      'onboarding1title'.tr(),
      'onboarding2title'.tr(),
      'onboarding3title'.tr()
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
                  alignment: Alignment.topCenter,
                  children: [
                    OnboaringUpperCircle(text: ''),
                    Positioned(
                        top: heightScreen * 0.3,
                        child: OnboardingTextContainer(
                          text: textContainer[i],
                          image: 'assets/images/onboarding${i + 1}.png',
                        ))
                  ],
                );
              }),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 18.h),
          child: MyButton(
              text: 'next'.tr(),
              onPressed: () {
                if (_pageController.page == 2.0) {
                  Navigator.pushNamed(context, Routes.openingScreen);
                } else {
                  _pageController.nextPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeIn);
                }
              }),
        )
      ],
    ));
  }
}
