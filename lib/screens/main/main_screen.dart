import 'package:admin/controllers/MenuController.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../Approvals/approvals_main.dart';
import '../analytics/analytics_main.dart';
import '../database/database_screen.dart';
import '../notification/notification_screen.dart';
import '../recommendations/recommendations_screen.dart';
import '../reports/reports_screen.dart';
import '../sales_market/sales_market_screen.dart';
import 'components/side_menu.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int title=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: sideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: sideMenu(),
              ),
            if(title==1) Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: DashboardScreen(),
            ),
            if(title==2)
              Expanded(
                // It takes 5/6 part of the screen
                flex: 5,
                child: AnalyticsMainScreen(),
              ),
            if (title == 3)
              Expanded(
                // It takes 5/6 part of the screen
                flex: 5,
                child: DatabaseMainScreen(),
              ),
            if (title == 4)
              Expanded(
                // It takes 5/6 part of the screen
                flex: 5,
                child: ReportMainScreen(),
              ),
            if(title==5)
              Expanded(flex: 5,
                  child: ApprovalScreen(),
              ),
            if (title == 7)
              Expanded(
                // It takes 5/6 part of the screen
                flex: 5,
                child: RecommendationScreen(),
              ),
            if (title == 8)
              Expanded(
                // It takes 5/6 part of the screen
                flex: 5,
                child: SalesMarketScreen(),
              ),
            if (title == 10)
              Expanded(
                // It takes 5/6 part of the screen
                flex: 5,
                child: NotificationScreen(),
              ),
          ],
        ),
      ),
    );
  }

Widget sideMenu(){
    return  Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/images/logo.png"),
          ),
          DrawerListTile(
            title: "Dashboard",
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {
              setState((){
                title=1;
              });
            },
          ),
          DrawerListTile(
            title: "Analytics",
            svgSrc: "assets/icons/menu_tran.svg",
            press: () {setState((){
              title=2;
            });},
          ),
          DrawerListTile(
            title: "Database",
            svgSrc: "assets/icons/menu_task.svg",
            press: () {setState((){
              title=3;
            });},
          ),
          DrawerListTile(
            title: "Reports",
            svgSrc: "assets/icons/menu_doc.svg",
            press: () {setState((){
              title=4;
            });},
          ),
          DrawerListTile(
            title: "Approvals",
            svgSrc: "assets/icons/menu_store.svg",
            press: () {setState((){
              title=5;
            });},
          ),
          DrawerListTile(
            title: "Access Rights",
            svgSrc: "assets/icons/menu_store.svg",
            press: () {setState((){
              title=6;
            });},
          ),
          DrawerListTile(
            title: "Recommendations",
            svgSrc: "assets/icons/menu_store.svg",
            press: () {setState((){
              title=7;
            });},
          ),
          DrawerListTile(
            title: "Sales / Marketing",
            svgSrc: "assets/icons/menu_store.svg",
            press: () {setState((){
              title=8;
            });},
          ),
          DrawerListTile(
            title: "AI",
            svgSrc: "assets/icons/menu_store.svg",
            press: () {setState((){
              title=9;
            });},
          ),
          DrawerListTile(
            title: "Notification",
            svgSrc: "assets/icons/menu_notification.svg",
            press: () {setState((){
              title=10;
            });},
          ),
          DrawerListTile(
            title: "Profile",
            svgSrc: "assets/icons/menu_profile.svg",
            press: () {setState((){
              title=11;
            });},
          ),
          DrawerListTile(
            title: "Settings",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {setState((){
              title=12;
            });},
          ),
        ],
      ),
    );
}
}
