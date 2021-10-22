import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:wirecash/view/activitylog/activitylog_view.dart';
import 'package:wirecash/view/home/home_view.dart';
import 'package:wirecash/view/wallet/wallet_view.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
    List pageList = [WalletView(), HomeView(), ActivityLogView()];

  int selectedPage = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:pageList[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          iconSize:27,
          selectedItemColor: Colors.blue,
          currentIndex: selectedPage,
          onTap:(page){
            setState(() {
              selectedPage=page;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: "Wallet"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "Activity"),
          ],
        ),
      ),
    );
  }
}
