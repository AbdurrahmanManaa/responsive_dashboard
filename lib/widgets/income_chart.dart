import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
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
          radius: activeIndex == 0 ? 50 : 40,
          value: 40,
          color: const Color(0xff208cc8),
          showTitle: false,
        ),
        PieChartSectionData(
          radius: activeIndex == 1 ? 50 : 40,
          value: 25,
          color: const Color(0xff4eb7f2),
          showTitle: false,
        ),
        PieChartSectionData(
          radius: activeIndex == 2 ? 50 : 40,
          value: 20,
          color: const Color(0xff064061),
          showTitle: false,
        ),
        PieChartSectionData(
          radius: activeIndex == 3 ? 50 : 40,
          value: 22,
          color: const Color(0xffe2decd),
          showTitle: false,
        ),
      ],
    );
  }
}
