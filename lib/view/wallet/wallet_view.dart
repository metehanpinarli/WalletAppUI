import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
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
          title: Text("Wallet", style: TextStyle(color: Colors.black)),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            TabBar(
                labelStyle: context.textTheme.headline6,
                unselectedLabelStyle: context.textTheme.headline6,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black,
                indicatorColor: Colors.blue,
                tabs: [
                  Tab(text: "ALL"),
                  Tab(text: "FIAT"),
                  Tab(text: "CRYPTO"),
                ]),
            Expanded(
              child: TabBarView(children: [
                All(),
                Fiat(),
                Crypto(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
