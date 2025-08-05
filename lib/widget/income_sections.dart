import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/custom_background_container.dart';
import 'package:responsive_dash_board/widget/detailed_income_chart.dart';
import 'package:responsive_dash_board/widget/income_chart.dart';
import 'package:responsive_dash_board/widget/income_details.dart';
import 'package:responsive_dash_board/widget/income_section_header.dart';

class IncomeSections extends StatelessWidget {
  const IncomeSections({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(children: [IncomeSectionHeader(), IncomeSectionBody()]),
    );
  }
}

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.sizeOf(context).width > 500
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 30,
                child: AspectRatio(aspectRatio: 1, child: IncomeChart()),
              ),
              SizedBox(width: 40),
              Expanded(flex: 67, child: IncomeDetails()),
            ],
          )
        : Padding(
            padding: const EdgeInsets.all(32.0),
            child: DetailedIncomeChart(),
          );
  }
}
