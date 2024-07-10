import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speedshiping2/features/home/ui/widgets/items.dart';
import 'package:speedshiping2/features/home/ui/widgets/orders_count_widgets.dart';
import '../../../core/routing/routes.dart';
import '../../../core/shared_widgets/my_app_bar.dart';

final GlobalKey<ScaffoldState> keys = GlobalKey();

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
          onTap: () {},
          child: Image.asset(
            'assets/images/chat.png',
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.12,
          )),
      drawer: Drawer(
        child: ListView(children: [
          DrawerHeader(
            decoration: BoxDecoration(
                color: const Color(0xffC4E89D),
                borderRadius: BorderRadius.circular(16)),
            child: Image.asset('assets/images/drawer.png'),
          ),
          SizedBox(
            height: 10.h,
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.orange,
                      size: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Settings',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Divider(thickness: 2),
          SizedBox(
            height: 5,
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/about.png',
                    height: 35,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'About Us',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Divider(thickness: 2),
          SizedBox(
            height: 5,
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  Icon(
                    Icons.logout,
                    color: Colors.orange,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Log-Out',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Divider(thickness: 2),
        ]),
      ),
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
              title: 'Pending orders',
              count: '35',
            ),
            OrdersCountWidgets(
              title: 'Ready orders',
              count: '20',
            ),
            OrdersCountWidgets(
              title: 'Canceled orders',
              count: '15',
            ),
            OrdersCountWidgets(
              title: 'Delivered requests',
              count: '50',
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Items(image: 'assets/images/wallet.png', text: 'Wallet'),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, Routes.ordersScreen);
                  },
                    child: Items(image: 'assets/images/orders.png', text: 'Orders')),
                Items(image: 'assets/images/scan.png', text: 'Scan QR'),
                Items(image: 'assets/images/tracking.png', text: 'Tracking  Details'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
