import 'package:flutter/material.dart';
import 'package:responsivedashboard/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                  title: 'Customer name', textHint: 'Type customer name'),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                  title: 'Customer Email', textHint: 'Type customer email'),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                  title: 'Item name', textHint: 'Type item name'),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(title: 'Item amount', textHint: 'USD'),
            ),
          ],
        ),
      ],
    );
  }
}
