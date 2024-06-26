import 'package:flutter/material.dart';

import '../theming/app_colors.dart';

class MyButton extends StatelessWidget {
  String text;
  void Function()? onPressed;

  MyButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 10),
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
      color: AppColors.myOrange,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
