import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsivedashboard/utils/app_styles.dart';
import 'package:responsivedashboard/widgets/range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        const RangeOptions(),
      ],
    );
  }
}
