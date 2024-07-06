import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsivedashboard/utils/app_images.dart';
import 'package:responsivedashboard/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: const ShapeDecoration(
            color: Color(0xffFAFAFA),
            shape: OvalBorder(),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: SvgPicture.asset(AppImages.imagesAdd),
          ),
        ),
      ],
    );
  }
}
