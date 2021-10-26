import 'package:flutter/material.dart';
import 'package:wirecash/widget/custom_widget.dart';

class DayView extends StatefulWidget {
  const DayView({Key? key}) : super(key: key);

  @override
  _DayViewState createState() => _DayViewState();
}

class _DayViewState extends State<DayView> {
  @override
  Widget build(BuildContext context) {
    return CustomList(image: "asset/image/getir.png", title: "Getir", subtitle: "19 Hours Ago", trailing: "-\$35");
  }
}
