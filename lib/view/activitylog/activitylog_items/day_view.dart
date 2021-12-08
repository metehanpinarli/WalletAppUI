import 'package:flutter/material.dart';
import 'package:wirecash/widget/custom_activity_list.dart';

class DayView extends StatefulWidget {
  const DayView({Key? key}) : super(key: key);

  @override
  _DayViewState createState() => _DayViewState();
}

class _DayViewState extends State<DayView> {
  @override
  Widget build(BuildContext context) {
    return CustomActivityList(title: "Shell", subtitle: "17 Monday June", trailing: "-\$35", color: Colors.red, icon: Icons.local_gas_station_rounded,boxColor:Colors.green,);
  }
}
