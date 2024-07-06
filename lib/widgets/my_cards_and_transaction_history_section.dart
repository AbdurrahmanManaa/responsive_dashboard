import 'package:flutter/material.dart';
import 'package:responsivedashboard/widgets/custom_background_container.dart';
import 'package:responsivedashboard/widgets/my_cards_section.dart';
import 'package:responsivedashboard/widgets/transaction_history.dart';

class MyCardsAndTransactionHistorySection extends StatelessWidget {
  const MyCardsAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 24,
      child: Column(
        children: [
          MyCardsSection(),
          Divider(
            color: Color(0xffF1F1F1),
            height: 40,
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
