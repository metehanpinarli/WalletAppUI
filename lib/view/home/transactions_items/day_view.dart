import 'package:flutter/material.dart';

class DayView extends StatefulWidget {
  const DayView({Key? key}) : super(key: key);

  @override
  _DayViewState createState() => _DayViewState();
}

class _DayViewState extends State<DayView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
