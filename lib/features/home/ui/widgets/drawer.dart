import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
