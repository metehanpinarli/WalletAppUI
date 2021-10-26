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
    return  CustomList(image: "asset/image/getir.png", title: "Getir", subtitle: "19 Hours Ago", trailing: "-\$35");
  }
}
