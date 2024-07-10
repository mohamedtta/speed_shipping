import 'package:flutter/material.dart';
import 'package:speedshiping2/core/shared_widgets/my_app_bar.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
          onTap: () {},
          child: Image.asset(
            'assets/images/chat.png',
            height: 40,
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyAppBar(

                item: 'assets/images/orders.png',
                itemTitle: 'Orders'),
            SizedBox(
              height: 20,
            ),
            Wrap(
              runSpacing: 20,
              spacing: 50,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/ready.png',
                      height: 70,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 1.5,
                      width: 70,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Ready',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    )
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/pending.png',
                      height: 70,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 1.5,
                      width: 70,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Pending',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    )
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/canceled.png',
                      height: 70,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 1.5,
                      width: 70,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Canceled',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    )
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/submited.png',
                      height: 70,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 1.5,
                      width: 70,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Submited',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
