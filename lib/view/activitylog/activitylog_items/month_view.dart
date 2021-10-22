import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

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
      padding: EdgeInsets.only(top: 10),
      itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 0,
          child: ListTile(
            trailing: Text("-\$79", style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.w500),),
            leading: Container(
              decoration: BoxDecoration(
                color: Colors.red ,
                borderRadius:context.lowBorderRadius,
              ),
              child: new IconButton(
                  icon: new Icon(Icons.shopping_cart_rounded, color: Colors.white,), onPressed: null),
            ),
            title: Text("Amazon"),
            subtitle: Text("17 Monday June"),),
        );
      },
    );
  }
}
