import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/all_expenses_item_model.dart';
import 'package:responsivedashboard/widgets/active_and_inactive_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.allExpensesItemModel, required this.isActive});

  final AllExpensesItemModel allExpensesItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(opacity: animation, child: child);
      },
      child: isActive
          ? ActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel)
          : InActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel),
    );
  }
}
