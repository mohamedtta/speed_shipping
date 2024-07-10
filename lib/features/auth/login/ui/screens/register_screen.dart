import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speedshiping2/core/shared_widgets/my_button_2.dart';
import 'package:speedshiping2/core/shared_widgets/my_form.dart';
import 'package:speedshiping2/core/theming/app_colors.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text('Create account',style: Theme.of(context).textTheme.bodyLarge,)),
            MyForm(formText: 'Your username', upperText: 'Username', controller: controller),
            MyForm(formText: 'Your email', upperText: 'Email', controller: controller),
            MyForm(formText: 'Your phone number', upperText: 'Phone number', controller: controller),
            MyForm(formText: 'Password', upperText: 'Password', controller: controller),
            const Spacer(),
            MyButton2(text: 'Create account', onPressed: (){}, color: AppColors.myOrange, textColor: Colors.white),
            SizedBox(height: 20.h,),
            Row(
              children: [
                Expanded(child: Container(color: Colors.black,height: 2,margin: EdgeInsets.only(left: 40.w),)),
                SizedBox(width: 10.w,),
                const Text('Or'),
                SizedBox(width: 10.w,),
                Expanded(child: Container(color: Colors.black,height: 2,margin: EdgeInsets.only(right: 40.w),)),
              ],
            ),
            SizedBox(height: 20.h,),
            MyButton2(text: 'Continue with Google', onPressed: (){}, color: AppColors.myWhite, textColor: Colors.black,withBorder: true,icon: 'assets/images/Google logo.svg',),
            SizedBox(height: 20.h,),

          ],
        ),
      ),
    );
  }
}
