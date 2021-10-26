import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:wirecash/widget/cutom_widget.dart';

class DayView extends StatefulWidget {
  const DayView({Key? key}) : super(key: key);

  @override
  _DayViewState createState() => _DayViewState();
}

class _DayViewState extends State<DayView> {
  @override
  Widget build(BuildContext context) {
    return customList(image: "asset/image/getir.png", title: "Getir", subtitle: "19 Hours Ago", trailing: "-\$35");
  }
}
