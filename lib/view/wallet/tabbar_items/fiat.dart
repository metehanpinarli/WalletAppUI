import 'package:flutter/material.dart';

class Fiat extends StatefulWidget {
  const Fiat({Key? key}) : super(key: key);

  @override
  _FiatState createState() => _FiatState();
}

class _FiatState extends State<Fiat> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 45,
      padding: EdgeInsets.only(top:10),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading:CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage:AssetImage('asset/image/ethereum.png'),
          ),
          title:Text("Ethereum",style:TextStyle(color:Colors.black,fontWeight: FontWeight.w600),),
          subtitle: Text("125.29 ETH"),
        );
      },
    );
  }
}
