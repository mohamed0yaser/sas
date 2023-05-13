import 'package:sas/widgets/switch_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: non_constant_identifier_names
Column GeneralSectionMethod() {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.all(8),
        height: 220,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(78, 78, 97, 0.2),
            borderRadius: BorderRadius.circular(10)),
        child: ListView(
          children: [
            SizedBox(height: 2,),
            TextField(
              controller: TextEditingController(text: "hi"),
              decoration: InputDecoration(
                  labelText: "first name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            SizedBox(height: 7,),
            TextField(
              controller: TextEditingController(text: "hi"),
              decoration: InputDecoration(
                labelText: "last name",

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            SizedBox(height: 2,),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            )
            ],
        ),
      ),
    ],
  );
}
