import 'package:flutter/material.dart';
import 'package:wirecash/widget/custom_widget.dart';
class WeekView extends StatefulWidget {
  const WeekView({Key? key}) : super(key: key);

  @override
  _WeekViewState createState() => _WeekViewState();
}

class _WeekViewState extends State<WeekView> {
  @override
  Widget build(BuildContext context) {
    return CustomList(image: "asset/image/CarlsJr.png", title: "Carls JR:", subtitle: "1 Hours Ago", trailing: "+\$85");
  }
}
