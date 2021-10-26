import 'package:flutter/material.dart';
import 'package:wirecash/widget/custom_widget.dart';

class MonthView extends StatefulWidget {
  const MonthView({Key? key}) : super(key: key);

  @override
  _MonthViewState createState() => _MonthViewState();
}

class _MonthViewState extends State<MonthView> {
  @override
  Widget build(BuildContext context) {
    return  CustomActivityList(title: "Vodofone", subtitle: "17 Monday June", trailing: "-\$35", color: Colors.red, icon: Icons.phone_android_rounded,boxColor: Colors.orange,);
  }
}
