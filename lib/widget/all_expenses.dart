import 'package:flutter/material.dart';

import 'package:responsive_dash_board/widget/all_expenses_header.dart';
import 'package:responsive_dash_board/widget/all_expenses_item_listview.dart';
import 'package:responsive_dash_board/widget/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesItemListView(),

          //ListView(scrollDirection: Axis.horizontal, children: []),
        ],
      ),
    );
  }
}
