import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widget/adaptive_layout.dart';
import 'package:responsive_dash_board/widget/custom_drawer.dart';
import 'package:responsive_dash_board/widget/dashboard_desktop_layout.dart';
import 'package:responsive_dash_board/widget/dashboard_mobile_layout.dart';
import 'package:responsive_dash_board/widget/dashboard_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      key: scaffoldKey,
      drawer: MediaQuery.of(context).size.width <= SizeConfig.tablet
          ? SizedBox(
              width: MediaQuery.of(context).size.width * .7,
              child: CustomDrawer(),
            )
          : null,
      appBar: MediaQuery.of(context).size.width <= SizeConfig.tablet
          ? AppBar(
              scrolledUnderElevation: 0,
              elevation: 0,
              backgroundColor: Color(0xFFF7F9FA),
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu, color: Color(0xff064061)),
              ),
            )
          : null,
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => DashboardMobileLayout(),
        tabletLayout: (context) => DashboardTabletLayout(),
        desktopLayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
