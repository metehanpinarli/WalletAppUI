import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wirecash/view/wallet/tabbar_items/all.dart';
import 'package:wirecash/view/wallet/tabbar_items/crypto.dart';
import 'package:wirecash/view/wallet/tabbar_items/fiat.dart';

class WalletView extends StatefulWidget {
  const WalletView({Key? key}) : super(key: key);

  @override
  _WalletViewState createState() => _WalletViewState();
}

class _WalletViewState extends State<WalletView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text("Wallet", style: TextStyle(color: Colors.black)),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            buildTabBar(context),
            Expanded(
              child: buildTabBarView(),
            ),
          ],
        ),
      ),
    );
  }

  TabBar buildTabBar(BuildContext context) {
    return TabBar(
        labelStyle: GoogleFonts.prompt(letterSpacing: 1, fontWeight: FontWeight.w500),
        unselectedLabelStyle: GoogleFonts.prompt(letterSpacing: 1, fontWeight: FontWeight.w500),
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: Colors.black54,
        unselectedLabelColor: Colors.black54,
        indicatorColor: Colors.blue,
        tabs: const [
          Tab(text: "ALL"),
          Tab(text: "FIAT"),
          Tab(text: "CRYPTO"),
        ]);
  }

  TabBarView buildTabBarView() {
    return const TabBarView(children: [
      All(),
      Fiat(),
      Crypto(),
    ]);
  }
}
