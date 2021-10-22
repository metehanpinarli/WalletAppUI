import 'package:flutter/material.dart';

class WeekView extends StatefulWidget {
  const WeekView({Key? key}) : super(key: key);

  @override
  _WeekViewState createState() => _WeekViewState();
}

class _WeekViewState extends State<WeekView> {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 6,
      padding: EdgeInsets.only(top:10),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          trailing: Text("+\$80",style: TextStyle(color:Colors.green,fontSize: 20,fontWeight:FontWeight.w500),),
          leading:Image.asset('asset/image/carls.jpg'),
          title:Text("Carls JR."),
          subtitle: Text("1 hours ago"),
        );
      },
    );
  }
}
