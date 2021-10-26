import 'package:flutter/material.dart';
import 'package:wirecash/widget/custom_widget.dart';

class All extends StatefulWidget {
  const All({Key? key}) : super(key: key);

  @override
  _AllState createState() => _AllState();
}

class _AllState extends State<All> {
  @override
  Widget build(BuildContext context) {
    return CustomWalletList(image: "asset/image/stellar.png", title: "Stellar", subtitle: "6,350,254,02 XLM");
  }
}
