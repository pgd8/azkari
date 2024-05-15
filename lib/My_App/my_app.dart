import 'package:azkari_project/My_App/my_Theme.dart';
import 'package:azkari_project/Screens/Home_Screen/home_screen.dart';
import 'package:azkari_project/Screens/Splash_Screen/splash_screen.dart';
import 'package:azkari_project/Screens/Sura_Details/sura_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      ensureScreenSize: true,
      designSize: const Size(420, 870),
      minTextAdapt: true,
      builder: (context, child) => MaterialApp(
        locale: Locale("en"),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        debugShowCheckedModeBanner: false,
        title: "Azkari",
        theme: MyTheme.lightTheme,
        darkTheme: MyTheme.darkTheme,
        initialRoute: SplashScreen.routeName,
        routes: {
          SplashScreen.routeName: (context) => const SplashScreen(),
          HomeScreen.routeName: (context) => HomeScreen(),
          SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        },
      ),
    );
  }
}
