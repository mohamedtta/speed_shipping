import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ))),
      debugShowCheckedModeBanner: false,
      title: 'Speed Shipping',
      initialRoute: Routes.openingScreen,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
