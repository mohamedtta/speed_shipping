import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speedshiping2/features/home/ui/widgets/drawer.dart';
import 'package:speedshiping2/features/home/ui/widgets/items.dart';
import 'package:speedshiping2/features/home/ui/widgets/orders_count_widgets.dart';
import '../../../core/routing/routes.dart';
import '../../../core/shared_widgets/my_app_bar.dart';

final GlobalKey<ScaffoldState> keys = GlobalKey();

class HomeScreen extends StatelessWidget {
  BuildContext myContext;
  HomeScreen({super.key,required this.myContext});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
          onTap: () {},
          child: SvgPicture .asset(
            'assets/images/chat.svg',
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.17,
          )),
      drawer: const MyDrawer(),
      key: keys,
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyAppBar(
                item: 'assets/images/profile.png', itemTitle: 'Ahmed Mohamed'),
            SizedBox(
              height: 15.h,
            ),
            OrdersCountWidgets(
              title: 'pending'.tr(),
              count: '35',
            ),
            OrdersCountWidgets(
              title: 'ready'.tr(),
              count: '20',
            ),
            OrdersCountWidgets(
              title: 'cancel'.tr(),
              count: '15',
            ),
            OrdersCountWidgets(
              title: 'request'.tr(),
              count: '50',
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Items(image: 'assets/images/wallet.svg', text: 'wallet'.tr()),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(myContext, Routes.ordersScreen);
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> const OrdersScreen()));
                  },
                    child: Items(image: 'assets/images/orders.svg', text: 'orders'.tr())),
                Items(image: 'assets/images/scan.svg', text: 'scan Qrcode'.tr()),
                Items(image: 'assets/images/tracking.svg', text: 'Tracking'.tr()),
              ],
            ),
            SizedBox(height: 100.h,)
          ],
        ),
      ),
    );
  }
}
