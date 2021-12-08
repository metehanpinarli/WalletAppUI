import 'package:flutter/material.dart';
import 'package:kartal/src/context_extension.dart';

class CustomList extends StatelessWidget {
  late String image;
  late String title;
  late String subtitle;
  late String trailing;

  CustomList({required this.image, required this.title, required this.subtitle, required this.trailing});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 6,
      padding: const EdgeInsets.only(top: 10),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          trailing: Text(
            trailing,
            style: const TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.w400),
          ),
          leading: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: context.lowBorderRadius,
                child: Image.asset(image),
              ),
            ),
          ),
          title: Text(title),
          subtitle: Text(subtitle),
        );
      },
    );
  }
}