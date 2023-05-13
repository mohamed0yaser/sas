/*
// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
//import 'package:custom_switch/custom_switch.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  SwitchClass createState() => SwitchClass();
}

class SwitchClass extends State {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Transform.scale(
              scale: 0.8,
              child: CustomSwitch(
                value: isSwitched,
                activeColor: Colors.blue,
                onChanged: (value) {
                  // print("VALUE : $value");
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
            ),
          ]),
    );
  }
}*/
