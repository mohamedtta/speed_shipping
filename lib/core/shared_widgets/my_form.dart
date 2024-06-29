import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speedshiping2/core/theming/app_colors.dart';

class MyForm extends StatelessWidget {
  String upperText;
  String formText;
  TextEditingController controller = TextEditingController();
  String? Function(String?)? validator;
  MyForm({super.key,required this.formText,required this.upperText , required this.controller, this.validator});

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widthScreen * 0.005,vertical:15.h),
      child: ListTile(
        title: Text(upperText,style: Theme.of(context).textTheme.bodySmall,),
        subtitle: TextFormField(
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal:20.w,vertical: heightScreen * 0.01 ),
            hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.myGray),
            hintText: formText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widthScreen * 0.025)
            )
          ),

        ),
      ),
    );
  }
}
