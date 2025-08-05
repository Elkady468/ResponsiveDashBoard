import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/widget/income_sections.dart';
import 'package:responsive_dash_board/widget/my_card_and_tranaction_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12, right: 12, left: 12),
        child: Column(
          children: [
            AllExpensesAndQuickInvoiceSection(),
            SizedBox(height: 24),
            MyCardAndTranactionHistorySection(),
            SizedBox(height: 24),
            IncomeSections(),
          ],
        ),
      ),
    );
  }
}
