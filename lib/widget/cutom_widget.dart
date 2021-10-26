import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class customCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width * 0.65,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: context.normalBorderRadius),
        child: Padding(
          padding: EdgeInsets.only(left: context.paddingNormal.left, top: context.paddingLow.top),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('asset/image/btc.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: context.paddingLow.left),
                    child: Text(
                      "Bitcoin",
                      style: context.textTheme.bodyText1,
                    ),
                  ),
                ],
              ),
              AutoSizeText(
                "150.00065848 BTC",
                style: context.textTheme.headline6!.copyWith(color: Colors.black54, fontSize: 17),
                maxLines: 1,
              ),
              Divider(
                thickness: context.height * 0.001,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: context.normalValue,
                    backgroundColor: Colors.grey,
                    child: IconButton(
                      iconSize: context.normalValue,
                      padding: EdgeInsets.zero,
                      icon: Icon(Icons.add),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: context.paddingLow.left),
                    child: CircleAvatar(
                      radius: context.normalValue,
                      backgroundColor: Colors.grey,
                      child: IconButton(
                        iconSize: context.normalValue,
                        padding: EdgeInsets.zero,
                        icon: Icon(Icons.qr_code_scanner_rounded),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class customList extends StatelessWidget {
  late String image;
  late String title;
  late String subtitle;
  late String trailing;

  customList({required this.image, required this.title, required this.subtitle, required this.trailing});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 6,
      padding: EdgeInsets.only(top: 10),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          trailing: Text(
            trailing,
            style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.w400),
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
