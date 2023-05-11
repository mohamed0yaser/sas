import 'package:flutter/material.dart';
import 'package:sas/Screens/weather.dart';
import 'package:provider/provider.dart';
import './provider/weatherProvider.dart';
import 'package:sas/Screens/hourlyWeatherScreen.dart';
import 'package:sas/Screens/weeklyWeatherScreen.dart';
import 'package:sas/app_color.dart';
import 'package:sas/home/home_tap.dart';
import 'package:sas/home_screen.dart';
import 'package:sas/splash.dart';
import 'package:sas/start/add_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (context) => WeatherProvider(),
      child: MaterialApp(
        title: 'la via',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(
              color: Colors.blue,
            ),
            elevation: 0,
          ),
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
        ),
        home: HomeScreen(),
        routes: {
          Splash.routeName: (buildContext) => const Splash(),
          HomeScreen.routeName: (buildContext) => const HomeScreen(),
          AddField.routeName: (buildContext) => const AddField(),
          HomeTap.routeName: (buildContext) => const HomeTap(),
          WeeklyScreen.routeName: (myCtx) => WeeklyScreen(),
          HourlyScreen.routeName: (myCtx) => HourlyScreen(),
        },
      ),
    );
  
    
    }
}
