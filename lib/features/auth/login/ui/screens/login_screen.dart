import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speedshiping2/core/shared_widgets/my_button_2.dart';
import 'package:speedshiping2/core/shared_widgets/my_form.dart';
import 'package:speedshiping2/core/theming/app_colors.dart';

import '../../../../../generated/l10n.dart';

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
          SizedBox(height: 150.h),
          MyForm(formText: 'Your email or Phone number', upperText: 'Email address or Phone number',controller: controller ,),
          MyForm(formText: 'Password', upperText: 'Password',controller: controller ,),
          TextButton(onPressed: (){}, child: Text('Forgot password?',style: Theme.of(context).textTheme.bodySmall,)),
          SizedBox(height: 150.h),
          Center(child: MyButton2(text: S.of(context).login, onPressed: (){}, color: AppColors.myOrange, textColor: AppColors.myWhite))
        ],
      ),

    );
  }
}
