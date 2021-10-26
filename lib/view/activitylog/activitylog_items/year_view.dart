import 'package:flutter/material.dart';
import 'package:wirecash/widget/custom_widget.dart';
class YearView extends StatefulWidget {
  const YearView({Key? key}) : super(key: key);

  @override
  _YearViewState createState() => _YearViewState();
}

class _YearViewState extends State<YearView> {
  @override
  Widget build(BuildContext context) {
    return  CustomActivityList(title: "Shell", subtitle: "17 Monday June", trailing: "-\$35", color: Colors.red, icon: Icons.local_gas_station_rounded,boxColor:Colors.green,);
  }
}
