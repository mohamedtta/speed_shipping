import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speedshiping2/core/theming/app_colors.dart';
import '../../features/home/ui/home_screen.dart';

class MyAppBar extends StatelessWidget {
  String item;
  String itemTitle;
  MyAppBar({super.key, required this.item, required this.itemTitle});

  @override
  Widget build(BuildContext context) {
    double widthScreen  = MediaQuery.of(context).size.width;
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(widthScreen * 0.081) , bottomLeft: Radius.circular(widthScreen * 0.081)),
          color: AppColors.appbarColor,
          image: const DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage('assets/images/background.png')
          )
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50.h, left: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      keys.currentState!.openDrawer();
                    },
                    icon: Icon(Icons.menu, size: widthScreen * 0.09),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50.w, top: 10.h),
                    child: Text(
                      'Hi, Ahmed',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50.w),
                    child: Text(
                      'Welcome to',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40.w, top: 10.h),
                    child: Text(
                      'Speed shipping',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        itemTitle,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.h,right: 10.w),
                        child: CircleAvatar(
                          radius: widthScreen * 0.065,
                          child: SvgPicture.asset(item,width: 100,height: 100,),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
