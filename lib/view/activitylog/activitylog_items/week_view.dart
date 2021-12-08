import 'package:flutter/material.dart';
import 'package:wirecash/widget/custom_activity_list.dart';

class WeekView extends StatefulWidget {
  const WeekView({Key? key}) : super(key: key);

  @override
  _WeekViewState createState() => _WeekViewState();
}

class _WeekViewState extends State<WeekView> {
  @override
  Widget build(BuildContext context) {
    return  CustomActivityList(title: "Amozon", subtitle: "17 Monday June", trailing: "-\$79", color: Colors.red, icon: Icons.shopping_cart_rounded,boxColor:Colors.red,);
  }
}
