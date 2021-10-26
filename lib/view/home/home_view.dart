import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:wirecash/widget/cutom_widget.dart';
import 'package:wirecash/view/home/transactions_items/day_view.dart';
import 'package:wirecash/view/home/transactions_items/month_view.dart';
import 'package:wirecash/view/home/transactions_items/week_view.dart';
import 'package:wirecash/view/home/transactions_items/year_view.dart';
import 'package:wirecash/view/transfer/transfer_view.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: buildAppBar(context),
        body: Stack(
          children: <Widget>[
            Column(
              children: [
                Expanded(
                  child: Container(
                    width: context.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.green, Colors.black],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: context.paddingLow.horizontal),
                      child: topColumn(context),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Spacer(
                              flex: 25,
                            ),
                            Expanded(
                                flex: 10,
                                child: Padding(
                                  padding: EdgeInsets.only(left: context.paddingLow.left),
                                  child: Text("Transactions", style: context.textTheme.headline6!.copyWith(fontWeight: FontWeight.bold)),
                                )),
                            Spacer(),
                            Expanded(
                              flex: 10,
                              child: buildTabBar(),
                            ),
                            Expanded(
                              flex: 70,
                              child: TabBarView(children: [
                                DayView(),
                                WeekView(),
                                MonthView(),
                                YearView(),
                              ]),
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            ),
            Positioned(
              top: context.height * 0.31,
              left: 5,
              right: 5,
              height: context.height * 0.20,
              child: ListView.builder(
                itemCount: 30,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(right: context.paddingLow.right),
                    child: customCard(),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Hey Mert!"),
        actions: [
          Padding(
            padding: context.paddingLow,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("asset/image/profile.jpg"),
            ),
          )
        ],
      );
  }

  Column topColumn(BuildContext context) {
    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(bottom: context.paddingLow.bottom),
                          child: Text("Total Balance", style: context.textTheme.headline6!.copyWith(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16)),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Text("\$6,454,252.92 ", style: context.textTheme.headline5!.copyWith(color: Colors.white, fontWeight: FontWeight.w600, letterSpacing: 1)),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                buildActionChip(
                                    "Make a Deposit",
                                    Icon(
                                      Icons.add_circle_outlined,
                                      color: Colors.white,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: buildActionChip(
                                      "Transfer",
                                      Icon(
                                        Icons.call_split,
                                        color: Colors.white,
                                      )),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                buildActionChip(
                                    "Savings",
                                    Icon(
                                      Icons.save_rounded,
                                      color: Colors.white,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8),
                                  child: buildActionChip(
                                      "Scan QR",
                                      Icon(
                                        Icons.qr_code_scanner_rounded,
                                        color: Colors.white,
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Spacer(
                          flex: 2,
                        )
                      ],
                    );
  }

  TabBar buildTabBar() {
    return TabBar(
      labelStyle: GoogleFonts.prompt(letterSpacing: 1, fontWeight: FontWeight.w500),
      unselectedLabelStyle: GoogleFonts.prompt(letterSpacing: 1, fontWeight: FontWeight.w500),
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: Colors.black54,
      unselectedLabelColor: Colors.black54,
      indicatorColor: Colors.blue,
      tabs: [
        Tab(
          text: "DAY",
        ),
        Tab(text: "WEEK"),
        Tab(text: "MONTH"),
        Tab(text: "YEAR"),
      ],
    );
  }

  buildActionChip(String labelText, Icon icon) => Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
        child: ActionChip(
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(context.normalValue)),
          backgroundColor: Colors.black54.withOpacity(0.2),
          labelPadding: EdgeInsets.all(5),
          label: Padding(
            padding: EdgeInsets.only(right: context.paddingLow.right),
            child: Text(
              labelText,
              style: context.textTheme.headline5!.copyWith(color: Colors.white, fontSize: 14),
            ),
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => TransferView()));
          },
          avatar: icon,
        ),
      );
}
