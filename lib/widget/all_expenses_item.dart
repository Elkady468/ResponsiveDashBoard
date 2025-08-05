import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';

import 'package:responsive_dash_board/widget/inactive_and_active_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.itemModel,
    required this.isSelected,
  });

  final AllExpensesItemModel itemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(opacity: animation, child: child);
        // ممكن تستخدم AnimatedScale, SlideTransition, etc.
      },
      child: isSelected
          ? ActiveAllExpensesItem(
              key: const ValueKey('active'), // مهم عشان يعرف الفرق
              itemModel: itemModel,
            )
          : InActiveAllExpensesItem(
              key: const ValueKey('inactive'),
              itemModel: itemModel,
            ),
    );
  }
}
