import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/transaction_item_model.dart';
import 'package:responsivedashboard/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionItemModel});

  final TransactionItemModel transactionItemModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            transactionItemModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
        ),
        subtitle: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            transactionItemModel.date,
            style: AppStyles.styleRegular16(context).copyWith(
              color: const Color(0xffAAAAAA),
            ),
          ),
        ),
        trailing: Text(
          transactionItemModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transactionItemModel.isWithdrawal
                ? const Color(0xffF3735E)
                : const Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
