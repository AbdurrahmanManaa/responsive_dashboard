import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/income_details_item_model.dart';
import 'package:responsivedashboard/utils/app_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.incomeDetailsItemModel});

  final IncomeDetailsItemModel incomeDetailsItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: incomeDetailsItemModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
        child: Text(
          incomeDetailsItemModel.title,
          style: AppStyles.styleRegular16(context),
        ),
      ),
      trailing: FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
        child: Text(
          incomeDetailsItemModel.value,
          style: AppStyles.styleMedium16(context),
        ),
      ),
    );
  }
}
