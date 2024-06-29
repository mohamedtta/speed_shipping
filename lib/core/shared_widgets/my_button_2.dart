import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theming/app_colors.dart';

class MyButton2 extends StatelessWidget {
  String text;
  void Function()? onPressed;
  Color color;
  Color textColor;

  MyButton2(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.color,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widthScreen * 0.05),
      child: MaterialButton(
        minWidth: double.infinity,
        onPressed: onPressed,
        padding: EdgeInsets.symmetric(vertical: heightScreen * 0.02 ),
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width * 0.02),
            borderSide: BorderSide.none),
        color: color,
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: textColor),
        ),
      ),
    );
  }
}
