import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      required this.backgroundColor,
      required this.textColor});

  final String title;
  final Color backgroundColor, textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: backgroundColor,
          elevation: 0,
        ),
        onPressed: () {},
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            style: AppStyles.styleSemiBold18(context).copyWith(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
