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
      '"Enjoy the fastest\ndelivery in Egypt with\nour app – precision and\nspeed in every\nshipment!"',
      '"Reliable and fast\ndelivery in Egypt – our\napp gives you peace of\nmind with every\nshipment!"',
      '"Our app is safe and\nsecure – every\nshipment is in good\nhands!"'
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
                        top: heightScreen  * 0.3,
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
              text: 'Next',
              onPressed: () {
                if (_pageController.page == 2.0) {
                  Navigator.pushNamed(context, Routes.languageScreen);
                } else {
                  _pageController.nextPage(
                      duration: const Duration(seconds: 1), curve: Curves.easeIn);
                }
              }),
        )
      ],
    ));
  }
}
