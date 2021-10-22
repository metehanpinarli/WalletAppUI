import 'package:flutter/material.dart';

class YearView extends StatefulWidget {
  const YearView({Key? key}) : super(key: key);

  @override
  _YearViewState createState() => _YearViewState();
}

class _YearViewState extends State<YearView> {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 6,
      padding: EdgeInsets.only(top:10),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          trailing: Text("+\$55",style: TextStyle(color:Colors.green,fontSize: 20,fontWeight:FontWeight.w500),),
          leading:Image.asset('asset/image/tesla.png'),
          title:Text("Tesla"),
          subtitle: Text("9 hours ago"),
        );
      },
    );
  }
}
