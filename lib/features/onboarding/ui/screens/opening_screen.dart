import 'package:flutter/material.dart';
import 'package:speedshiping2/core/shared_widgets/my_button_2.dart';

import '../../../../core/theming/app_colors.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/opening.png',
                height: 450,
              ),
              Text(
                'Explore the app',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
              SizedBox(
                height: 15,
              ),
              Text('"Easy and quick sign-in – start using our app instantly!"'),
              SizedBox(
                height: 5,
              ),
              Text('our app instantly!"'),
              SizedBox(
                height: 50,
              ),
              MyButton2(
                  text: 'Log in',
                  onPressed: () {},
                  color: AppColors.myOrange,
                  textColor: Colors.white),
              SizedBox(
                height: 20,
              ),
              MyButton2(
                  text: 'Create an account',
                  onPressed: () {},
                  color: AppColors.myWhite,
                  textColor: Colors.black),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
