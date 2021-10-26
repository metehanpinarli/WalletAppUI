import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kartal/kartal.dart';

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

class CustomTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelStyle: GoogleFonts.prompt(letterSpacing: 1, fontWeight: FontWeight.w500),
      unselectedLabelStyle: GoogleFonts.prompt(letterSpacing: 1, fontWeight: FontWeight.w500),
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: Colors.black54,
      unselectedLabelColor: Colors.black54,
      indicatorColor: Colors.blue,
      tabs: const [
        Tab(text: "DAY"),
        Tab(text: "WEEK"),
        Tab(text: "MONTH"),
        Tab(text: "YEAR"),
      ],
    );
  }
}
