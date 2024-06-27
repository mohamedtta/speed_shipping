import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speedshiping2/core/entities/language.dart';
import 'package:speedshiping2/core/shared_widgets/my_button_2.dart';
import 'package:speedshiping2/core/theming/app_colors.dart';
import 'package:speedshiping2/features/onboarding/ui/widgets/onboaring_upper_circle.dart';

import '../../../../core/routing/routes.dart';

class LanguageScreen extends StatelessWidget {

  @override
  List<Language> languages = [
    Language(title: 'English', image: 'assets/images/english.png'),
    Language(title: 'Arabic', image: 'assets/images/arabic.png'),
    Language(title: 'Chinese', image: 'assets/images/chinese.png'),
    Language(title: 'French', image: 'assets/images/french.png'),
    Language(title: 'German', image: 'assets/images/german.png'),
    Language(title: 'Spanish', image: 'assets/images/spanish.png'),
    Language(title: 'Russian', image: 'assets/images/russian.png'),
    Language(title: 'Pakistan', image: 'assets/images/russian.png'),
    Language(title: 'India', image: 'assets/images/russian.png'),
  ];

  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          OnboaringUpperCircle(text: 'Choose the language',),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, i) => Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              height: heightScreen * 0.058,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(widthScreen * 0.025),
                                color: const Color(0xffF4F5F6),
                              ),
                              child: Card(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      languages[i].image,
                                      height: heightScreen * 0.035,
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    Text(languages[i].title,style: TextStyle(fontSize: widthScreen * 0.04),)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                separatorBuilder: (context, i) => SizedBox(
                      height: 25.h,
                    ),
                itemCount: languages.length),
          ),
          SizedBox(
            height: 25.h,
          ),
          MyButton2(
              text: 'Continue',
              onPressed: () {
                Navigator.pushNamed(context, Routes.openingScreen);
              },
              color: AppColors.myOrange,
              textColor: Colors.white),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
