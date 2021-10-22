import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class TransferView extends StatefulWidget {
  const TransferView({Key? key}) : super(key: key);

  @override
  _TransferViewState createState() => _TransferViewState();
}

class _TransferViewState extends State<TransferView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Transfer",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: context.paddingLow,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Your Contacts"),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: context.width * 0.3,
                      child: Card(
                        elevation: 0.5 ,
                        shape: RoundedRectangleBorder(borderRadius: context.lowBorderRadius),
                        color: Colors.white,
                        child: Padding(
                          padding:context.paddingLow,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircleAvatar(
                                radius:context.mediumValue,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage("asset/image/profile.jpg"),
                              ),
                              Text("Josie Maran"),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Spacer(flex: 4),
            ],
          ),
        ),
      ),
    );
  }
}
