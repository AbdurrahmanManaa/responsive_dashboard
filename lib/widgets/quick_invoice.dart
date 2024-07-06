import 'package:flutter/material.dart';
import 'package:responsivedashboard/widgets/custom_background_container.dart';
import 'package:responsivedashboard/widgets/custom_button.dart';
import 'package:responsivedashboard/widgets/latest_transaction.dart';
import 'package:responsivedashboard/widgets/quick_invoice_form.dart';
import 'package:responsivedashboard/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 24,
          ),
          LatestTransaction(),
          Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          QuickInvoiceForm(),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  textColor: Color(0xff4EB7F2),
                  title: 'Add more details',
                  backgroundColor: Colors.white,
                ),
              ),
              SizedBox(
                width: 24,
              ),
              Expanded(
                child: CustomButton(
                  textColor: Colors.white,
                  title: 'Send Money',
                  backgroundColor: Color(0xff4EB7F2),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
