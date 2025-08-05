import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/widget/custom_drawer.dart';
import 'package:responsive_dash_board/widget/dashboard_mobile_layout.dart';
import 'package:responsive_dash_board/widget/income_sections.dart';
import 'package:responsive_dash_board/widget/my_card_and_tranaction_history_section.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 70, child: CustomDrawer()),
        SizedBox(width: 12),
        Expanded(
          flex: 151,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: DashboardMobileLayout(),
          ),
        ),
        SizedBox(width: 12),
      ],
    );
  }
}
