import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speedshiping2/core/theming/app_colors.dart';

class OrdersCountWidgets extends StatelessWidget {
  String title;
  String count;
  OrdersCountWidgets({super.key,required this.title,  required this.count});

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: widthScreen * 0.05 , bottom: heightScreen * 0.02),
      child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              height: heightScreen * 0.05,
              width: widthScreen * 0.12,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.appbarColor,width: widthScreen * 0.003),
                  borderRadius: BorderRadius.circular(widthScreen * 0.02),
                  color: Colors.white),
              child:Text(count,style: Theme.of(context).textTheme.bodySmall,),
            ),
            SizedBox(
              width: widthScreen * 0.02,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
    );
  }
}
