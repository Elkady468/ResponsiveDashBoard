import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/widget/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/widget/custom_background_container.dart';
import 'package:responsive_dash_board/widget/custom_dot_indicator.dart';
import 'package:responsive_dash_board/widget/custom_drawer.dart';
import 'package:responsive_dash_board/widget/all_expenses.dart';
import 'package:responsive_dash_board/widget/dots_indicator.dart';
import 'package:responsive_dash_board/widget/income_sections.dart';
import 'package:responsive_dash_board/widget/my_card.dart';
import 'package:responsive_dash_board/widget/my_card_and_tranaction_history_section.dart';
import 'package:responsive_dash_board/widget/my_card_page_view.dart';
import 'package:responsive_dash_board/widget/my_cards_section.dart';
import 'package:responsive_dash_board/widget/quick_invoice.dart';
import 'package:responsive_dash_board/widget/tranaction_item.dart';
import 'package:responsive_dash_board/widget/transaction_history.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 70, child: CustomDrawer()),
        SizedBox(width: 24),
        Expanded(
          flex: 268,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 151,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: AllExpensesAndQuickInvoiceSection(),
                      ),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      flex: 117,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Column(
                          children: [
                            MyCardAndTranactionHistorySection(),
                            SizedBox(height: 24),
                            IncomeSections(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
