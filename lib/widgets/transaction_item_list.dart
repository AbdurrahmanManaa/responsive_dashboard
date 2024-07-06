import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/transaction_item_model.dart';
import 'package:responsivedashboard/widgets/transaction_item.dart';

class TransactionItemList extends StatelessWidget {
  const TransactionItemList({super.key});

  static const List<TransactionItemModel> items = [
    TransactionItemModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithdrawal: true),
    TransactionItemModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 at 3:30 PM',
        amount: r'$2,000',
        isWithdrawal: false),
    TransactionItemModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 at 3:30 PM',
        amount: r'$20,129',
        isWithdrawal: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (e) => TransactionItem(transactionItemModel: e),
          )
          .toList(),
    );
  }
}
