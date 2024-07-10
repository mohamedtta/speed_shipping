import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyButton2 extends StatelessWidget {
  String text;
  void Function()? onPressed;
  Color color;
  Color textColor;
  bool withBorder;
  String? icon;

  MyButton2(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.color,
      required this.textColor,
        this.withBorder = false,
        this.icon
      });

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
            borderSide: withBorder ? const BorderSide(color: Colors.black):BorderSide.none),
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon == null ? const Text(''): SvgPicture.asset(icon!,width: widthScreen * 0.09 ,height: heightScreen * 0.022 ,),
            SizedBox(width: 20.w,),
            Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
