import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widget/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  final List<UserInfoModel> items = const [
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: "Abdallah Elkady",
      subTitle: "AbdallahElkady@gmail",
    ),
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: "Madrani Andi",
      subTitle: "Madraniadi20@gmail",
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: "Josua Nunito",
      subTitle: "JoshNunito@gmail.com",
    ),
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: "Madrani Andi",
      subTitle: "Madraniadi20@gmail",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (e) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)),
            )
            .toList(),
      ),
    );
    // return SizedBox(
    //   height: 75,
    //   child: ListView.builder(
    //     itemCount: items.length,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) {
    //       return Padding(
    //         padding: const EdgeInsets.only(right: 12.0),
    //         child: IntrinsicWidth(
    //           child: UserInfoListTile(userInfoModel: items[index]),
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
