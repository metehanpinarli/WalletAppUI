import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelStyle: GoogleFonts.prompt(letterSpacing: 1, fontWeight: FontWeight.w500),
      unselectedLabelStyle: GoogleFonts.prompt(letterSpacing: 1, fontWeight: FontWeight.w500),
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: Colors.black54,
      unselectedLabelColor: Colors.black54,
      indicatorColor: Colors.blue,
      tabs: const [
        Tab(text: "DAY"),
        Tab(text: "WEEK"),
        Tab(text: "MONTH"),
        Tab(text: "YEAR"),
      ],
    );
  }
}