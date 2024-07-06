import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/app_styles.dart';
import 'package:responsivedashboard/widgets/range_options.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Income',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        const RangeOptions(),
      ],
    );
  }
}
