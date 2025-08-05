import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, required this.color});
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
        ),
        onPressed: () {},
        child: Text(
          title,
          style: color == Colors.white
              ? AppStyles.styleSemiBold18(
                  context,
                ).copyWith(color: Color(0xff4EB7F2))
              : AppStyles.styleSemiBold18(context),
        ),
      ),
    );
  }
}
