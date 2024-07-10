import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speedshiping2/core/shared_widgets/my_button_2.dart';
import 'package:speedshiping2/core/shared_widgets/my_form.dart';
import 'package:speedshiping2/core/theming/app_colors.dart';

import '../../../../../core/routing/routes.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset('assets/images/login.png'),
          MyForm(formText: 'Your email or Phone number', upperText: 'Email address or Phone number',controller: controller ,),
          MyForm(formText: 'Password', upperText: 'Password',controller: controller ,),
          TextButton(onPressed: (){}, child: Text('Forgot password?',style: Theme.of(context).textTheme.bodySmall,)),
          const Spacer(),
          Center(child: MyButton2(text: 'login'.tr(), onPressed: (){
            Navigator.pushNamed(context, Routes.navScreen);
          }, color: AppColors.myOrange, textColor: AppColors.myWhite)),
          SizedBox(height: 30.h,)
        ],
      ),

    );
  }
}
