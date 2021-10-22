import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
class YearView extends StatefulWidget {
  const YearView({Key? key}) : super(key: key);

  @override
  _YearViewState createState() => _YearViewState();
}

class _YearViewState extends State<YearView> {
  @override
  Widget build(BuildContext context) {
    return   ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 6,
      padding: EdgeInsets.only(top: 10),
      itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 0,
          child: ListTile(
            trailing: Text("-\$35", style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.w500),),
            leading: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius:context.lowBorderRadius,
              ),
              child: new IconButton(
                  icon: new Icon(Icons.local_gas_station_rounded, color: Colors.white,),onPressed: null,),
            ),
            title: Text("Shell"),
            subtitle: Text("17 Monday June"),),
        );
      },
    );
  }
}
