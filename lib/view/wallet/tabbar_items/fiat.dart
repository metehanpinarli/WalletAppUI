import 'package:flutter/material.dart';
import 'package:wirecash/widget/custom_wallet_list.dart';

class Fiat extends StatefulWidget {
  const Fiat({Key? key}) : super(key: key);

  @override
  _FiatState createState() => _FiatState();
}

class _FiatState extends State<Fiat> {
  @override
  Widget build(BuildContext context) {
    return CustomWalletList(image: "asset/image/btc.png", title: "Bitcoin", subtitle: "150.12 BTC");
  }
}
