import 'package:flutter/material.dart';
import 'package:wirecash/widget/cutom_widget.dart';
class YearView extends StatefulWidget {
  const YearView({Key? key}) : super(key: key);

  @override
  _YearViewState createState() => _YearViewState();
}

class _YearViewState extends State<YearView> {
  @override
  Widget build(BuildContext context) {
    return customList(image: "asset/image/CarlsJr.png", title: "Carls JR:", subtitle: "9 Hours Ago", trailing: "+\$55");
  }
}
