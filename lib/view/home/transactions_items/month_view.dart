import 'package:flutter/material.dart';

class MonthView extends StatefulWidget {
  const MonthView({Key? key}) : super(key: key);

  @override
  _MonthViewState createState() => _MonthViewState();
}

class _MonthViewState extends State<MonthView> {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 6,
      padding: EdgeInsets.only(top:10),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          trailing: Text("-\$35",style: TextStyle(color:Colors.red,fontSize: 20,fontWeight:FontWeight.w500),),
          leading:Image.asset('asset/image/getir.png'),
          title:Text("Getir"),
          subtitle: Text("19 hours ago"),
        );
      },
    );
  }
}
