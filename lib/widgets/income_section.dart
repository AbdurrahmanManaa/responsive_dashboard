import 'package:flutter/material.dart';
import 'package:responsivedashboard/widgets/custom_background_container.dart';
import 'package:responsivedashboard/widgets/income_body.dart';
import 'package:responsivedashboard/widgets/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 20,
      child: Column(
        children: [
          IncomeHeader(),
          SizedBox(
            height: 16,
          ),
          IncomeBody(),
        ],
      ),
    );
  }
}
