import 'package:flutter/material.dart';
import 'package:kartal/src/context_extension.dart';

class CustomActivityList extends StatelessWidget {
  late String title;
  late String subtitle;
  late String trailing;
  late Color color;
  late Color boxColor;
  late IconData icon;

  CustomActivityList({required this.title, required this.subtitle, required this.trailing, required this.color,required this.icon,required this.boxColor});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 6,
      padding: const EdgeInsets.only(top: 10),
      itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 0,
          child: ListTile(
            trailing: Text(
              trailing,
              style: TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.w500),
            ),
            leading: Container(
              decoration: BoxDecoration(
                color:boxColor,
                borderRadius: context.lowBorderRadius,
              ),
              child: IconButton(
                  icon: Icon(
                    icon,
                    color: Colors.white,
                  ),
                  onPressed: null),
            ),
            title: Text(title),
            subtitle: Text(subtitle),
          ),
        );
      },
    );
  }
}