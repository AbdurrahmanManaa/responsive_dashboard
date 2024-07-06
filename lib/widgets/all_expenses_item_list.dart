import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/all_expenses_item_model.dart';
import 'package:responsivedashboard/utils/app_images.dart';
import 'package:responsivedashboard/widgets/all_expenses_item.dart';

class AllExpensesItemList extends StatefulWidget {
  const AllExpensesItemList({super.key});

  @override
  State<AllExpensesItemList> createState() => _AllExpensesItemListState();
}

class _AllExpensesItemListState extends State<AllExpensesItemList> {
  final List<AllExpensesItemModel> items = const [
    AllExpensesItemModel(
      image: AppImages.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: AppImages.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: AppImages.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (activeIndex != 0) {
                setState(() {
                  activeIndex = 0;
                });
              }
            },
            child: AllExpensesItem(
              isActive: activeIndex == 0,
              allExpensesItemModel: items[0],
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (activeIndex != 1) {
                setState(() {
                  activeIndex = 1;
                });
              }
            },
            child: AllExpensesItem(
              isActive: activeIndex == 1,
              allExpensesItemModel: items[1],
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (activeIndex != 2) {
                setState(() {
                  activeIndex = 2;
                });
              }
            },
            child: AllExpensesItem(
              isActive: activeIndex == 2,
              allExpensesItemModel: items[2],
            ),
          ),
        ),
      ],
    );
  }
}
