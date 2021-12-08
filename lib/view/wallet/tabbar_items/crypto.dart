import 'package:flutter/material.dart';
import 'package:wirecash/widget/custom_wallet_list.dart';

class Crypto extends StatefulWidget {
  const Crypto({Key? key}) : super(key: key);

  @override
  _CryptoState createState() => _CryptoState();
}

class _CryptoState extends State<Crypto> {
  @override
  Widget build(BuildContext context) {
    return CustomWalletList(image: "asset/image/ethereum.png", title: "Ethereum", subtitle: "125.29 ETH");
  }
}
