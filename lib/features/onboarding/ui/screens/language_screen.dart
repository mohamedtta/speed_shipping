import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speedshiping2/core/shared_widgets/my_button_2.dart';
import 'package:speedshiping2/core/theming/app_colors.dart';
import 'package:speedshiping2/features/onboarding/ui/widgets/onboaring_upper_circle.dart';
import 'package:speedshiping2/main.dart';
import '../../../../core/routing/routes.dart';
import '../../data/language_data.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
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
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  sharedPreferences.setString('lang', languages[i].code!);
                                  context.setLocale(Locale(languages[i].code!));
                                });
                              },
                              child: Container(
                                height: heightScreen * 0.06,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(widthScreen * 0.025),
                                  color: sharedPreferences.getString('lang') == languages[i].code ? Colors.red:Colors.white,
                                ),
                                child: Card(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                Navigator.pushReplacementNamed(context, Routes.onBoardingScreen);
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
