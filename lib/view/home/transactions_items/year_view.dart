import 'package:flutter/material.dart';
import 'package:wirecash/widget/custom_list.dart';


class YearView extends StatefulWidget {
  const YearView({Key? key}) : super(key: key);

  @override
  _YearViewState createState() => _YearViewState();
}

class _YearViewState extends State<YearView> {
  @override
  Widget build(BuildContext context) {
    return CustomList(image: "asset/image/CarlsJr.png", title: "Carls JR:", subtitle: "9 Hours Ago", trailing: "+\$55");
  }
}
