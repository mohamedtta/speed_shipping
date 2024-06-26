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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: MaterialButton(
                height: 50,
                onPressed: onPressed,
                padding:
                    const EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none),
                color: color,
                child: Text(
                  text,
                  style: TextStyle(color: textColor, fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
