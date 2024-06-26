import 'package:flutter/material.dart';
import 'package:speedshiping2/core/entities/language.dart';
import 'package:speedshiping2/core/shared_widgets/my_button_2.dart';
import 'package:speedshiping2/core/theming/app_colors.dart';
import 'package:speedshiping2/features/onboarding/ui/widgets/onboaring_upper_circle.dart';

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
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: OnboaringUpperCircle(
                text: 'Choose the languages',
              )),
            ],
          ),
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
                              height: 55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xffF4F5F6),
                              ),
                              child: Card(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      languages[i].image,
                                      height: 30,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(languages[i].title)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                separatorBuilder: (context, i) => const SizedBox(
                      height: 20,
                    ),
                itemCount: languages.length),
          ),
          const SizedBox(
            height: 20,
          ),
          MyButton2(
              text: 'Continue',
              onPressed: () {},
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
