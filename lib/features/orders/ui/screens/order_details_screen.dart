import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speedshiping2/core/shared_widgets/my_app_bar.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyAppBar(item: 'assets/images/ready.svg', itemTitle: 'Kamal sayed'),
            SizedBox(height: 30.h,),
            ListTile(
              title: Text('Request name',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
              subtitle: Text('maciej.kowalski@email.com',style: Theme.of(context).textTheme.bodySmall),
              trailing: Text('08:43',style: Theme.of(context).textTheme.bodyMedium,),
            ),
            ListTile(
              title: Text('Type of Request',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
              subtitle: Text('Mobile cases',style: Theme.of(context).textTheme.bodySmall),
            ),
            ListTile(
              title: Text('Price and payment type',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
              subtitle: Text('2650',style: Theme.of(context).textTheme.bodySmall),
              trailing: Text('cash',style: Theme.of(context).textTheme.bodyMedium),
            ),
            ListTile(
              title: Text('Delivery Point',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
              subtitle: Text('Doki',style: Theme.of(context).textTheme.bodySmall),
              trailing: Text('23 Mar',style: Theme.of(context).textTheme.bodyMedium),
            ),
            ListTile(
              title: Text('pickup point',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
              subtitle: Text('Dokki, Helmy El-Sayed Street\n, next to Al-Ahly Bank',style: Theme.of(context).textTheme.bodySmall),
              trailing: Text('18 Mar',style: Theme.of(context).textTheme.bodyMedium),
            ),
            ListTile(
              title: Text('Serial Number',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
              subtitle: Text('21548521000',style: Theme.of(context).textTheme.bodySmall),
            ),
            ListTile(
              title: Text('Delivery time',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
              subtitle: Text('30 min',style: Theme.of(context).textTheme.bodySmall),
            ),
            ListTile(
              title: Text('Customer mobile',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
              subtitle: Text('+201548755252',style: Theme.of(context).textTheme.bodySmall),
            ),
          ],
        ),
      ),
    );
  }
}
