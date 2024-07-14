import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/shared_widgets/my_app_bar.dart';

class ReadyOrderScreen extends StatelessWidget {
  const ReadyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyAppBar(item: 'assets/images/ready.svg', itemTitle: 'Ready Orders'),
          SizedBox(height: 30.h,),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, Routes.orderDetailsScreen);
              },
            child: ListTile(
              leading: const CircleAvatar(radius: 30,),
              title: Text('Kamal Sayed', style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
              subtitle: Text('Mobile cases',style: Theme.of(context).textTheme.bodySmall,),
              trailing: Text('08:43', style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
            ),
          ),
          ListTile(
            leading: const CircleAvatar(radius: 30,),
            title: Text('Kamal Sayed', style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
            subtitle: Text('Mobile cases',style: Theme.of(context).textTheme.bodySmall,),
            trailing: Text('08:43', style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
          ),
          ListTile(
            leading: const CircleAvatar(radius: 30,),
            title: Text('Kamal Sayed', style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
            subtitle: Text('Mobile cases',style: Theme.of(context).textTheme.bodySmall,),
            trailing: Text('08:43', style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
  }
}
