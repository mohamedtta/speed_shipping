import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingTextContainer extends StatelessWidget {
  String text;
  String image;
  OnboardingTextContainer({super.key, required this.text , required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.66,
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1 ,vertical: MediaQuery.of(context).size.width * 0.1 ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(26.r)),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(fontSize:  MediaQuery.of(context).size.width * 0.03,fontWeight: FontWeight.bold),
          ),
          Image.asset(image)
        ],
      ),
    );
    }
}
