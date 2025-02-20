import 'package:evently_app/screens/login_screen.dart';
import 'package:evently_app/screens/on_boarding.dart';
import 'package:evently_app/screens/register_screen.dart';
import 'package:evently_app/utiles/base_theme.dart';
import 'package:evently_app/utiles/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main()  {
  runApp(
    const MoviesApp(),
  );
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    BaseTheme lightTheme = LightTheme();
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme.theme,
        themeMode: ThemeMode.light,
        routes: {
          OnBoarding.routeName: (context) => const OnBoarding(),
          LoginScreen.routeName: (context) => LoginScreen(),
          RegisterScreen.routeName: (context) => RegisterScreen(),
        },
        initialRoute: RegisterScreen.routeName,
      ),
    );
  }
}
