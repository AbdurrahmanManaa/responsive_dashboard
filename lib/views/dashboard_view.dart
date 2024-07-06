import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/size_config.dart';
import 'package:responsivedashboard/widgets/adaptive_layout_widget.dart';
import 'package:responsivedashboard/widgets/custom_drawer.dart';
import 'package:responsivedashboard/widgets/dashboard_desktop_layout.dart';
import 'package:responsivedashboard/widgets/dashboard_mobile_layout.dart';
import 'package:responsivedashboard/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xfff7f9fa),
        appBar: MediaQuery.sizeOf(context).width < SizeConfig.tabletBreakPoint
            ? AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              )
            : null,
        drawer: const CustomDrawer(),
        body: AdaptiveLayout(
          mobileLayout: (context) => const DashboardMobileLayout(),
          tabletLayout: (context) => const DashboardTabletLayout(),
          desktopLayout: (context) => const DashboardDesktopLayout(),
        ),
      ),
    );
  }
}
