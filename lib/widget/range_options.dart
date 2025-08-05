import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class RangeOptions extends StatefulWidget {
  const RangeOptions({super.key});

  @override
  State<RangeOptions> createState() => _RangeOptionsState();
}

class _RangeOptionsState extends State<RangeOptions> {
  String dropDownValue = "Monthly";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(width: 1, color: Color(0xffF1F1F1)),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          dropdownColor: Colors.white,
          value: dropDownValue,
          style: AppStyles.styleMedium16(context),
          icon: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Transform.rotate(
              angle: -1.571428571428571,
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 24,
                color: Color(0xff064061),
              ),
            ),
          ),
          items: const [
            DropdownMenuItem<String>(child: Text("Weekly"), value: "Weekly"),
            DropdownMenuItem<String>(child: Text("Monthly"), value: "Monthly"),
            DropdownMenuItem<String>(child: Text("Yearly"), value: "Yearly"),
          ],
          onChanged: (String? newValue) {
            setState(() {
              dropDownValue = newValue!;
            });
          },
        ),
      ),
    );

    return Container(
      padding: EdgeInsets.all(12),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xffF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Text("Monthly", style: AppStyles.styleMedium16(context)),
          SizedBox(width: 18),
          Transform.rotate(
            angle: -1.571428571428571,
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 24,
              color: Color(0xff064061),
            ),
          ),
        ],
      ),
    );
  }
}
