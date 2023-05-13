import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:sas/app_color.dart';
import 'package:sas/cam/cam.dart';
import 'package:sas/home/air_quality.dart';
import 'package:sas/home/home_tap.dart';
import 'package:sas/home/setting.dart';
import 'package:sas/home/weather.dart';

List<Widget> tabs = [
  HomeTap(),
  Weather(),
  AirQuality(),
  Setting(),
];
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
Future<bool> _onWillPop() async {
    return false; 
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await availableCameras().then((value) => Navigator.push(context,
                MaterialPageRoute(builder: (_) => CameraPage(cameras: value))));
          },
          backgroundColor: AppColor.colorGreen,
          child: Icon(Icons.qr_code_scanner_outlined),
          shape: StadiumBorder(
              side: BorderSide(color: AppColor.colorGreen, width: 4)),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.black,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.cloud_outlined,
                    color: Colors.black,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.air,
                    color: Colors.black,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings_outlined,
                    color: Colors.black,
                  ),
                  label: '')
            ],
          ),
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
