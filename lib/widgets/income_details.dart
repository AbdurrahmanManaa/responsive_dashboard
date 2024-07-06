import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/income_details_item_model.dart';
import 'package:responsivedashboard/widgets/income_details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const List<IncomeDetailsItemModel> items = [
    IncomeDetailsItemModel(
      title: 'Design service',
      value: '40%',
      color: Color(0xff208CC8),
    ),
    IncomeDetailsItemModel(
      title: 'Design product',
      value: '25%',
      color: Color(0xff4EB7F2),
    ),
    IncomeDetailsItemModel(
      title: 'Product royalty',
      value: '20%',
      color: Color(0xff064061),
    ),
    IncomeDetailsItemModel(
      title: 'Other',
      value: '22%',
      color: Color(0xffE2DECD),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (e) => IncomeDetailsItem(
              incomeDetailsItemModel: e,
            ),
          )
          .toList(),
    );
  }
}
