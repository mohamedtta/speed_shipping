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
    return MaterialButton(
      minWidth: MediaQuery.of(context).size.width * 0.89,
      height: MediaQuery.of(context).size.height * 0.065,
      onPressed: onPressed,
      padding:
          const EdgeInsets.symmetric(horizontal: 45, vertical: 10),
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none),
      color: color,
      child: Text(
        text,
        style: TextStyle(color: textColor, fontSize: MediaQuery.of(context).size.width * 0.04),
      ),
    );
  }
}
