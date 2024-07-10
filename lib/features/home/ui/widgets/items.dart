import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Items extends StatelessWidget {
  String image;
  String text;
  Items({super.key , required this.image , required this.text});

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: Column(
        children: [
          Image.asset(
            image,
            height: heightScreen * 0.082,
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 1.5,
            width: widthScreen * 0.08,
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
      ),
    );
  }
}
