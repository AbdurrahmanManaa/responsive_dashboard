import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/app_styles.dart';
import 'package:responsivedashboard/widgets/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField(
      {super.key, required this.title, required this.textHint});

  final String title, textHint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(
          textHint: textHint,
        ),
      ],
    );
  }
}
