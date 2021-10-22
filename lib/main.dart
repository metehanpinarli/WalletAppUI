import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wirecash/view/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:wirecash/view/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
    ));
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      showSemanticsDebugger: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(child: BottomNavBar()),
    );
  }
}