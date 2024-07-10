import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speedshiping2/core/theming/app_colors.dart';

class OrdersCountWidgets extends StatelessWidget {
  String title;
  String count;
  OrdersCountWidgets({super.key,required this.title,  required this.count});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.12,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.appbarColor,width: 3),
                borderRadius: BorderRadius.circular(16),
                color: Colors.white),
            child:Text(count,style: Theme.of(context).textTheme.bodySmall,),
          ),
          SizedBox(
            width: 10.w,
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
