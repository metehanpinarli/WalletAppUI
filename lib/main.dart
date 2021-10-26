import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wirecash/view/bottom_nav_bar/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
    ));
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      showSemanticsDebugger: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SafeArea(child: BottomNavBar()),
    );
  }
}