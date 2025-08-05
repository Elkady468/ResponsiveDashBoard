import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Color(0xFF064061),
      decoration: InputDecoration(
        hintStyle: AppStyles.styleRegular16(
          context,
        ).copyWith(color: Color(0xffAAAAAA)),
        hintText: hint,
        fillColor: Color(0xfffafafa),
        filled: true,
        border: buildborder(),
        enabledBorder: buildborder(),
        focusedBorder: buildborder(),
      ),
    );
  }
}

OutlineInputBorder buildborder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(color: Color(0xfffafafa)),
  );
}
