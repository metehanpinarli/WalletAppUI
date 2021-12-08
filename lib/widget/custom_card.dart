import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kartal/src/context_extension.dart';

class CustomCard extends StatelessWidget {
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
                  const CircleAvatar(
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
                      icon: const Icon(Icons.add),
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
                        icon: const Icon(Icons.qr_code_scanner_rounded),
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