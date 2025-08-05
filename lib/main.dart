import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/dash_board_view.dart';
import 'package:flutter_launcher_icons/android.dart';

void main() {
  //  runApp(const ResponsiveDashBoard());

  runApp(
    //DevicePreview(enabled: true, builder: (context) => ResponsiveDashBoard()),
    ResponsiveDashBoard(),
  );
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoardView(),
    );
  }
}
