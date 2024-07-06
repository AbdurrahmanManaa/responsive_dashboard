import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.textHint});
  final String textHint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black38,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(20),
        hintStyle: AppStyles.styleRegular16(context).copyWith(
          color: const Color(0xffAAAAAA),
        ),
        hintText: textHint,
        fillColor: const Color(0xfffafafa),
        filled: true,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(
      color: Color(0xfffafafa),
    ),
  );
}
