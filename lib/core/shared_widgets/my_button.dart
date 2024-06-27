import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theming/app_colors.dart';

class MyButton extends StatelessWidget {
  String text;
  void Function()? onPressed;

  MyButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
          onPressed: onPressed,
          minWidth: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.height * 0.05,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.r), borderSide: BorderSide.none),
          color: AppColors.myOrange,
          child: Text(
            text,
            style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width * 0.045 ,fontWeight: FontWeight.bold),
          ),
        );
  }
}
