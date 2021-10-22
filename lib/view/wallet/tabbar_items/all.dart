import 'package:flutter/material.dart';
class All extends StatefulWidget {
  const All({Key? key}) : super(key: key);

  @override
  _AllState createState() => _AllState();
}

class _AllState extends State<All> {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 6,
      padding: EdgeInsets.only(top:10),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading:CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage:AssetImage('asset/image/stellar.png'),
          ),
          title:Text("Stellar",style:TextStyle(color:Colors.black,fontWeight: FontWeight.w600),),
          subtitle: Text("6,350,254,02 XLM"),
        );
      },
    );
  }
}
