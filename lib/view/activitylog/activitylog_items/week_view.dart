import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class WeekView extends StatefulWidget {
  const WeekView({Key? key}) : super(key: key);

  @override
  _WeekViewState createState() => _WeekViewState();
}

class _WeekViewState extends State<WeekView> {
  @override
  Widget build(BuildContext context) {
    return   ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 15,
      padding: EdgeInsets.only(top: 10),
      itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 0,
          child: ListTile(
            trailing: Text("-\$35", style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.w500),),
            leading: Container(
              decoration: BoxDecoration(
                color: Colors.orangeAccent  ,
                borderRadius:context.lowBorderRadius,
              ),
              child: new IconButton(
                  icon: new Icon(Icons.phone_android, color: Colors.white,), onPressed: null),
            ),
            title: Text("Vodofone"),
            subtitle: Text("17 Monday June"),),
        );
      },
    );
  }
}
