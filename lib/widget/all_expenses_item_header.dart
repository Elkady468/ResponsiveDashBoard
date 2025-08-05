import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class inActiveAllExpensesItemHeader extends StatelessWidget {
  const inActiveAllExpensesItemHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                child: Center(child: SvgPicture.asset(image)),

                decoration: ShapeDecoration(
                  shape: OvalBorder(),
                  color: Color(0xffFAFAFA),
                ),
              ),
            ),
          ),
        ),

        Icon(Icons.arrow_forward_ios_rounded, color: Color(0xff064061)),
      ],
    );
  }
}

class ActiveAllExpensesItemHeader extends StatelessWidget {
  const ActiveAllExpensesItemHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),

                decoration: ShapeDecoration(
                  shape: OvalBorder(),
                  color: Color(0x1AFFFFFF),
                ),
              ),
            ),
          ),
        ),
        Icon(Icons.arrow_forward_ios_rounded, color: Colors.white),
      ],
    );
  }
}
