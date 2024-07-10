import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

late SharedPreferences sharedPreferences;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  await EasyLocalization.ensureInitialized();
  runApp(
      DevicePreview(
          enabled: !kReleaseMode,
          builder: (context) => EasyLocalization(
              supportedLocales: const [
                Locale('en'),
                Locale('ar'),
                Locale('fr'),
                Locale('de'),
                Locale('hi'),
                Locale('zh'),
                Locale('ru'),
                Locale('es'),
              ],
              path: 'assets/localization',
              child: const MyApp())
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          locale: context.locale,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          builder: DevicePreview.appBuilder,
          theme: ThemeData(
            textTheme: TextTheme(
              bodyLarge: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.09,fontWeight: FontWeight.bold),
              bodyMedium: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05),
              bodySmall: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
            ),
              appBarTheme: const AppBarTheme(
                  systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarColor: Colors.transparent,
                  ))),
          debugShowCheckedModeBanner: false,
          title: 'Speed Shipping',
          initialRoute: sharedPreferences.getString('lang') == null ? Routes.languageScreen : Routes.openingScreen ,
          onGenerateRoute: AppRouter.generateRoute,
        );
      },
    );
  }
}
