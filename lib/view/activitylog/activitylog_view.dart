import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart  ';
import 'package:wirecash/view/wallet/tabbar_items/crypto.dart';
import 'activitylog_items/day_view.dart';
import 'activitylog_items/month_view.dart';
import 'activitylog_items/week_view.dart';
import 'activitylog_items/year_view.dart';

class ActivityLogView extends StatefulWidget {
  const ActivityLogView({Key? key}) : super(key: key);

  @override
  _ActivityLogViewState createState() => _ActivityLogViewState();
}

class _ActivityLogViewState extends State<ActivityLogView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Activity",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Padding(
              padding: context.paddingLow,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("asset/image/profile.jpg"),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                width: context.width,
                color: Colors.white,
                child: Padding(
                  padding:EdgeInsets.only(left: context.paddingLow.left),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total Balance", style: context.textTheme.headline6!.copyWith(color: Colors.black, fontWeight: FontWeight.w500)),
                      Padding(
                        padding:EdgeInsets.only(top:context.paddingLow.top),
                        child: Text("\$6,454,252.92 ", style: context.textTheme.headline5!.copyWith(color: Colors.black, fontWeight: FontWeight.w400)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            Expanded(
              flex: 6,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildElevatedButton(context,"Send Money",Icon(Icons.attach_money)),
                        buildElevatedButton(context,"Calculation",Icon(Icons.calculate)),
                      ],
                    ),
                    Padding(
                      padding:EdgeInsets.only(left: context.paddingLow.left,top:context.paddingLow.top),
                      child: Text("Transactions", style: context.textTheme.headline6),
                    ),
                    TabBar(
                      labelStyle: context.textTheme.headline6,
                      unselectedLabelStyle: context.textTheme.headline6,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.black,
                      indicatorColor: Colors.blue,
                      tabs: [
                        Tab(text: " Day "),
                        Tab(text: " Week"),
                        Tab(text: "Month"),
                        Tab(text: " Year"),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(children: [
                        DayView(),
                        WeekView(),
                        MonthView(),
                        YearView(),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ElevatedButton buildElevatedButton(BuildContext context,String text,Icon icon) {
    return ElevatedButton(
                style:ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(context.lowValue),
                    )
                  ),
                  elevation: MaterialStateProperty.all<double>(0),
                  backgroundColor: MaterialStateProperty.all<Color?>(Colors.blueAccent.withOpacity(0.1)),
                  foregroundColor: MaterialStateProperty.all<Color?>(Colors.indigo.shade700)
                ),
                child: Padding(
                  padding: context.paddingLow,
                  child: Row(
                    children: [icon, Text(text)],
                  ),
                ),
                onPressed: () {},
              );
  }
}
