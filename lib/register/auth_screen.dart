import 'package:flutter/material.dart';
import 'package:sas/app_color.dart';
import 'package:sas/register/login.dart';
import 'package:sas/register/signup.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(image: AssetImage("images/bg.jpeg"),
              fit: BoxFit.fill
            ),
          ),
        ),
         DefaultTabController(
           length: 2,
           initialIndex: 0,
           child: Scaffold(
             backgroundColor: Colors.transparent,
             body: Column(
               children: [
                 SizedBox(height: size.height * 0.15),
                 Center(child: Image.asset("images/loogo.png")),
                  TabBar(
                    labelColor: AppColor.colorGreen,
                    unselectedLabelColor: Colors.grey,
                   labelStyle:
                   const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                   indicator: UnderlineTabIndicator(
                    borderSide: const BorderSide(
                      width: 3,
                      color: AppColor.colorGreen,
                     ),
                     insets: EdgeInsets.symmetric(horizontal:size.width * 0.15),
                   ),
                  tabs: const [
                     Tab(icon: Text('Sign Up')),
                     Tab(icon: Text('Login'))
                  ],
                ),
                 const Expanded(
                   child: TabBarView(
                    children: [
                      Signup(),
                      Login(),
                    ],
                   ),
                 ),
              ],
            ),
           ),
         ),
      ]
    );
  }
}