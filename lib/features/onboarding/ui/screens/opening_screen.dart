import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speedshiping2/core/routing/routes.dart';
import 'package:speedshiping2/core/shared_widgets/my_button_2.dart';
import '../../../../core/theming/app_colors.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    iconSize: MediaQuery.of(context).size.width * 0.1,
                      onPressed: (){Navigator.pushReplacementNamed(context, Routes.languageScreen);}, icon: const Icon(Icons.translate))
                ],
              ),
              Image.asset(
                'assets/images/opening.png',
                height: heightScreen * 0.54,
              ),
              Text(
                'openingtitle'.tr(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: widthScreen * 0.08),
              ),
              Text('openingbody'.tr(),style: TextStyle(fontSize: widthScreen * 0.04),),
              SizedBox(
                height: 20.h,
              ),
              MyButton2(
                  text: 'login'.tr(),
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.loginScreen);
                  },
                  color: AppColors.myOrange,
                  textColor: Colors.white),
              SizedBox(
                height: 10.h,
              ),
              MyButton2(
                  text: 'register'.tr(),
                  onPressed: () {},
                  color: AppColors.myWhite,
                  textColor: Colors.black),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
