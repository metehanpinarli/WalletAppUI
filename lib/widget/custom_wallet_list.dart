
import 'package:flutter/material.dart';

class CustomWalletList extends StatelessWidget {
  late String image;
  late String title;
  late String subtitle;

  CustomWalletList({required this.image, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 6,
      padding: EdgeInsets.only(top:10),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading:CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage:AssetImage(image),
          ),
          title:Text(title,style:const TextStyle(color:Colors.black,fontWeight: FontWeight.w600),),
          subtitle: Text(subtitle),
        );
      },
    );
  }
}