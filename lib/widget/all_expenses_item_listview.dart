import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widget/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  int selectedIndex = 0;
  static final List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: "Balance",
      date: "March 2019",
      price: "\$34,120",
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: "income",
      date: "April 2022",
      price: "\$90,129",
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: "Expenses",
      date: "July 2025",
      price: "\$19,571",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (selectedIndex != 0) {
                selectedIndex = 0;
                setState(() {});
              }
            },
            child: AllExpensesItem(
              itemModel: items[0],
              isSelected: selectedIndex == 0,
            ),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (selectedIndex != 1) {
                selectedIndex = 1;
                setState(() {});
              }
            },
            child: AllExpensesItem(
              itemModel: items[1],
              isSelected: selectedIndex == 1,
            ),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (selectedIndex != 2) {
                selectedIndex = 2;
                setState(() {});
              }
            },
            child: AllExpensesItem(
              itemModel: items[2],
              isSelected: selectedIndex == 2,
            ),
          ),
        ),
      ],
    );
  }
}







  // return Row(
    //   children: AllExpensesItemListView.items.asMap().entries.map((e) {
    //     int index = e.key;
    //     var item = e.value;
    //     if (index == 1) {
    //       return Expanded(
    //         child: GestureDetector(
    //           onTap: () {
    //             if (selectedIndex != index) {
    //               setState(() {
    //                 selectedIndex = index;
    //                 print(selectedIndex);
    //               });
    //             }
    //           },
    //           child: Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 12),
    //             child: AllExpensesItem(
    //               itemModel: item,
    //               isSelected: selectedIndex == index,
    //             ),
    //           ),
    //         ),
    //       );
    //     } else {
    //       return Expanded(
    //         child: GestureDetector(
    //           onTap: () {
    //             if (selectedIndex != index) {
    //               setState(() {
    //                 selectedIndex = index;
    //                 print(selectedIndex);
    //               });
    //             }
    //           },
    //           child: AllExpensesItem(
    //             itemModel: item,
    //             isSelected: selectedIndex == index,
    //           ),
    //         ),
    //       );
    //     }
    //   }).toList(),
    // );