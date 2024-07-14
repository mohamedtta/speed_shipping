import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speedshiping2/core/theming/app_colors.dart';

class Items extends StatelessWidget {
  String image;
  String text;
  Color? imgColor;
  Items({super.key , required this.image , required this.text , this.imgColor});

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return  Column(
      children: [
        SvgPicture.asset(
          image,
          color: imgColor,
          height: heightScreen * 0.07,
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: heightScreen * 0.003,
          width: widthScreen * 0.1,
          color: Colors.orange,
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.bodySmall,
        )
      ],
    );
  }
}
