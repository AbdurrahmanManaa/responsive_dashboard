import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (touchEvent, touchResponse) {
          activeIndex =
              touchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0 ? 1.6 : null,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == 0 ? null : Colors.white,
          ),
          title: activeIndex == 0 ? 'Design service' : '40%',
          radius: activeIndex == 0 ? 50 : 40,
          value: 40,
          color: const Color(0xff208cc8),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 2.5 : null,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == 1 ? null : Colors.white,
          ),
          title: activeIndex == 1 ? 'Design product' : '25%',
          radius: activeIndex == 1 ? 50 : 40,
          value: 25,
          color: const Color(0xff4eb7f2),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.6 : null,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == 2 ? null : Colors.white,
          ),
          title: activeIndex == 2 ? 'Product royalty' : '20%',
          radius: activeIndex == 2 ? 50 : 40,
          value: 20,
          color: const Color(0xff064061),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.6 : null,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == 3 ? null : Colors.white,
          ),
          title: activeIndex == 3 ? 'Other' : '22%',
          radius: activeIndex == 3 ? 50 : 40,
          value: 22,
          color: const Color(0xffe2decd),
        ),
      ],
    );
  }
}
