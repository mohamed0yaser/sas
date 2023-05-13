import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:sas/Screens/landing_page.dart';
import 'package:sas/app_color.dart';
import 'package:sas/home_screen.dart';
import 'package:sas/provider/weatherProvider.dart';
import 'package:sas/register/managers/login_cubit.dart';
import 'package:sas/register/managers/signup_cubit.dart';
import 'package:sas/screens/hourlyWeatherScreen.dart';
import 'package:sas/screens/weeklyWeatherScreen.dart';
import 'package:sas/splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => WeatherProvider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SignupCubit(),
        ),
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppColor.lightTheme,
        title: 'La Via',
        home: LandingPage(),
        routes: {
          Splash.routeName: (buildContext) => const Splash(),
          HomeScreen.routeName: (buildContext) => const HomeScreen(),
          WeeklyScreen.routeName: (myCtx) => WeeklyScreen(),
          HourlyScreen.routeName: (myCtx) => HourlyScreen(),
        },
      ),
    );
  }
}
