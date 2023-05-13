import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: non_constant_identifier_names
Column AppearanceSectionMethod() {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.all(8),
        height: 180,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(78, 78, 97, 0.2),
            borderRadius: BorderRadius.circular(10)),
        child: ListView(
          children: [
            ListTile(
              leading: Image.asset(
                'assets/icons/appIcon.png',
                height: 30,
              ),
              iconColor: Colors.grey,
              title: Wrap(
                spacing: 116,
                children: [
                  Text(
                    'App Icon',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: GoogleFonts.inter().fontFamily,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFFFFFFF)),
                  ),
                  Text(
                    'Default',
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: GoogleFonts.inter().fontFamily,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFFA2A2B5)),
                  ),
                ],
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 15),
            ),
            ListTile(
              leading: Image.asset(
                'assets/icons/theme.png',
                height: 30,
              ),
              iconColor: Colors.grey,
              title: Wrap(
                spacing: 145,
                children: [
                  Text(
                    'Theme',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: GoogleFonts.inter().fontFamily,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFFFFFFF)),
                  ),
                  Text(
                    'Dark',
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: GoogleFonts.inter().fontFamily,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFFA2A2B5)),
                  ),
                ],
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 15),
            ),
            ListTile(
              leading: const Icon(Icons.brightness_3_outlined),
              iconColor: Colors.grey,
              title: Wrap(
                spacing: 98,
                children: [
                  Text(
                    'Brightness',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: GoogleFonts.inter().fontFamily,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFFFFFFF)),
                  ),
                  Text(
                    'Medium',
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: GoogleFonts.inter().fontFamily,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFFA2A2B5)),
                  ),
                ],
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 15),
            ),
          ],
        ),
      ),
    ],
  );
}
