import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_colors.dart';

class OnboaringUpperCircle extends StatelessWidget {
  String text;
  OnboaringUpperCircle({required this.text});
  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Container(
      height: heightScreen * 0.4,
      decoration: BoxDecoration(
          color: AppColors.myOrange,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(widthScreen * 0.25),
              bottomRight: Radius.circular(widthScreen * 0.25))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/car.png'),
              Padding(
                padding: EdgeInsets.only(top: 30.h),
                child: Text.rich(
                  TextSpan(children: [
                    TextSpan(
                        text: 'SPEED',
                        style: TextStyle(color: Colors.grey, fontSize: widthScreen * 0.05)),
                    TextSpan(
                        text: 'SHIPPING',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: widthScreen * 0.05))
                  ]),
                ),
              ),
            ],
          ),
          SizedBox(height: 100.h,),
          Text(
            text,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: widthScreen * 0.05),
          )
        ],
      ),
    );
  }
}
