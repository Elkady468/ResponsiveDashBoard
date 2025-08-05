import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/custom_background_container.dart';
import 'package:responsive_dash_board/widget/my_cards_section.dart';
import 'package:responsive_dash_board/widget/transaction_history.dart';
import 'package:responsive_dash_board/widget/transaction_history_list_view.dart';

class MyCardAndTranactionHistorySection extends StatelessWidget {
  const MyCardAndTranactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardsSection(),
          Divider(height: 40, color: Color(0xfff1f1f1)),
          TransactionHistory(),
        ],
      ),
    );
  }
}
