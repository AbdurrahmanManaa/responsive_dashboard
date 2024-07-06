import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/size_config.dart';
import 'package:responsivedashboard/widgets/detailed_income_chart.dart';
import 'package:responsivedashboard/widgets/income_chart.dart';
import 'package:responsivedashboard/widgets/income_details.dart';

class IncomeBody extends StatelessWidget {
  const IncomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;

    return screenWidth >= SizeConfig.desktopBreakPoint && screenWidth < 1750
        ? const Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: DetailedIncomeChart(),
            ),
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(
                flex: 2,
                child: IncomeDetails(),
              ),
            ],
          );
  }
}
