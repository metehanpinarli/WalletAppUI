import 'package:flutter/material.dart';

class Crypto extends StatefulWidget {
  const Crypto({Key? key}) : super(key: key);

  @override
  _CryptoState createState() => _CryptoState();
}

class _CryptoState extends State<Crypto> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 3,
      padding: EdgeInsets.only(top:10),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading:CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage:AssetImage('asset/image/btc.png'),
          ),
          title:Text("Bitcoin",style:TextStyle(color:Colors.black,fontWeight: FontWeight.w600),),
          subtitle: Text("150.12 BTC"),
        );
      },
    );
  }
}
