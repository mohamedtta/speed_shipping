import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speedshiping2/core/routing/routes.dart';
import 'package:speedshiping2/core/shared_widgets/my_app_bar.dart';
import 'package:speedshiping2/core/theming/app_colors.dart';
import 'package:speedshiping2/features/home/ui/widgets/items.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
          onTap: () {},
          child: SvgPicture.asset(
            'assets/images/chat.svg',
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.17,
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyAppBar(
                item: 'assets/images/orders.svg',
                itemTitle: 'orders'.tr()),
            SizedBox(
              height: 100.h,
            ),
            Wrap(
              runSpacing: 40.h,
              spacing: 60.w,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, Routes.readyOrdersScreen);
                  },
                    child: Items(image: 'assets/images/ready.svg', text: 'Ready',imgColor: AppColors.appbarColor)),
                Items(image: 'assets/images/pending.svg', text: 'pending'.tr(),imgColor: AppColors.appbarColor,),
                Items(image: 'assets/images/canceled.svg', text: 'cancel'.tr()),
                Items(image: 'assets/images/submited.svg', text: 'Submited',imgColor: AppColors.appbarColor),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
          ],
        ),
      ),
    );
  }
}
