import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:wirecash/view/home/transactions_items/day_view.dart';
import 'package:wirecash/view/home/transactions_items/month_view.dart';
import 'package:wirecash/view/home/transactions_items/week_view.dart';
import 'package:wirecash/view/home/transactions_items/year_view.dart';
import 'package:wirecash/view/transfer/transfer_view.dart';

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
        appBar: AppBar(
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
        ),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Spacer(),
                        Text("Total Balance", style: context.textTheme.headline6!.copyWith(color: Colors.white, fontWeight: FontWeight.w500)),
                        Text("\$6,454,252.92 ", style: context.textTheme.headline5!.copyWith(color: Colors.white, fontWeight: FontWeight.w400)),
                        Row(
                          children: [
                            buildActionChip("Make a Deposit", Icon(Icons.add_circle_outlined)),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: buildActionChip("Transfer", Icon(Icons.call_split)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            buildActionChip("Savings", Icon(Icons.save_rounded)),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              child: buildActionChip("Scan QR", Icon(Icons.qr_code_scanner_rounded)),
                            ),
                          ],
                        ),
                        Spacer(
                          flex: 2,
                        ),
                      ],
                    ),
                  ),
                )),
                Expanded(
                  child: Container(
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Spacer(
                              flex: 20,
                            ),
                            Expanded(flex: 10, child: Text("Transactions", style: context.textTheme.headline6)),
                            Expanded(
                              flex: 10,
                              child: TabBar(
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
              top: context.height * 0.30,
              left: 5,
              right: 5,
              height: context.height * 0.20,
              child: ListView.builder(
                itemCount: 30,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
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
                              Text(
                                "150.00065848 BTC",
                                style: context.textTheme.headline6,
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
                      ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  ActionChip buildActionChip(String labelText, Icon icon) => ActionChip(
        label: Text(labelText),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => TransferView()));
        },
        avatar: icon,
      );
}
