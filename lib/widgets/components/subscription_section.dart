import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: non_constant_identifier_names
Column SubscriptionsSectionMethod() {
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
                'assets/icons/sorting.png',
                height: 30,
              ),
              iconColor: Colors.grey,
              title: Wrap(
                spacing: 141,
                children: [
                  Text(
                    'Sorting',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: GoogleFonts.inter().fontFamily,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFFFFFFF)),
                  ),
                  Text(
                    'Date',
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
                'assets/icons/summary.png',
                height: 30,
              ),
              iconColor: Colors.grey,
              title: Wrap(
                spacing: 105,
                children: [
                  Text(
                    'Summary',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: GoogleFonts.inter().fontFamily,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFFFFFFF)),
                  ),
                  Text(
                    'Average',
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
                'assets/icons/defaultCurrency.png',
                height: 30,
              ),
              iconColor: Colors.grey,
              title: Wrap(
                spacing: 55,
                children: [
                  Text(
                    'Default Currency',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: GoogleFonts.inter().fontFamily,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFFFFFFF)),
                  ),
                  Text(
                    'USD (\$)',
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
