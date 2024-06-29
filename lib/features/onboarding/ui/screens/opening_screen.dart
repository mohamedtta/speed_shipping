import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speedshiping2/core/routing/routes.dart';
import 'package:speedshiping2/core/shared_widgets/my_button_2.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../generated/l10n.dart';

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
                S.of(context).openingtitle,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: widthScreen * 0.08),
              ),
              Text(S.of(context).openingbody,style: TextStyle(fontSize: widthScreen * 0.04),),
              SizedBox(
                height: 20.h,
              ),
              MyButton2(
                  text: S.of(context).login,
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.loginScreen);
                  },
                  color: AppColors.myOrange,
                  textColor: Colors.white),
              SizedBox(
                height: 10.h,
              ),
              MyButton2(
                  text: S.of(context).register,
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
