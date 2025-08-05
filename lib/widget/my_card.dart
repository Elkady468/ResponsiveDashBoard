import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/utils/constants.dart';
import 'package:responsive_dash_board/widget/custom_background_container.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        padding: EdgeInsets.only(right: 24, left: 16, bottom: 8),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.imagesCardBackground),
          ),
          color: KPrimaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Spacer(flex: 1),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Name card",
                style: AppStyles.styleRegular16(
                  context,
                ).copyWith(color: Colors.white),
              ),
              subtitle: Text(
                "Syah Bandi",
                style: AppStyles.styleMedium20(context),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            Spacer(flex: 5),
            Text(
              "0918 8124 0042 8129",
              style: AppStyles.styleSemiBold24(
                context,
              ).copyWith(color: Colors.white),
            ),
            SizedBox(height: 8),
            Text(
              "12/20 - 120",
              style: AppStyles.styleRegular16(
                context,
              ).copyWith(color: Colors.white),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
