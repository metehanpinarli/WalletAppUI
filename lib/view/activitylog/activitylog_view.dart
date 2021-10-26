import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart  ';
import 'package:wirecash/widget/custom_widget.dart';
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
          title: const Text(
            "Activity",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Padding(
              padding: context.paddingLow,
              child: const CircleAvatar(
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
              child: topContainer(context),
            ),
            const Spacer(),
            Expanded(
              flex: 6,
              child: bottomContainer(context),
            ),
          ],
        ),
      ),
    );
  }

  Container topContainer(BuildContext context) {
    return Container(
              width: context.width,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(left: context.paddingLow.left),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Total Balance", style: context.textTheme.headline6!.copyWith(color: Colors.black, fontWeight: FontWeight.w500)),
                    Padding(
                      padding: EdgeInsets.only(top: context.paddingLow.top),
                      child: Text("\$6,454,252.92 ", style: context.textTheme.headline5!.copyWith(color: Colors.black, fontWeight: FontWeight.w400)),
                    ),
                  ],
                ),
              ),
            );
  }

  Container bottomContainer(BuildContext context) {
    return Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buttonRow(context),
                  Padding(
                    padding: EdgeInsets.only(left: context.paddingLow.left, top: context.paddingLow.top),
                    child: Text("Transactions", style: context.textTheme.headline6),
                  ),
                  CustomTabBar(),
                  Expanded(
                    child: buildTabBarView(),
                  ),
                ],
              ),
            );
  }

  Row buttonRow(BuildContext context) {
    return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildElevatedButton(context, "Send Money", const Icon(Icons.attach_money)),
                      buildElevatedButton(context, "Calculation",const  Icon(Icons.calculate)),
                    ],
                  );
  }

  TabBarView buildTabBarView() {
    return const TabBarView(children: [
                      DayView(),
                      WeekView(),
                      MonthView(),
                      YearView(),
                    ]);
  }

  ElevatedButton buildElevatedButton(BuildContext context, String text, Icon icon) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(context.lowValue),
          )),
          elevation: MaterialStateProperty.all<double>(0),
          backgroundColor: MaterialStateProperty.all<Color?>(Colors.blueAccent.withOpacity(0.1)),
          foregroundColor: MaterialStateProperty.all<Color?>(Colors.indigo.shade700)),
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
