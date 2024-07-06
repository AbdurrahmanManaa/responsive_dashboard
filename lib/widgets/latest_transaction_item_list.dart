import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/user_info_model.dart';
import 'package:responsivedashboard/utils/app_images.dart';
import 'package:responsivedashboard/widgets/user_info_list_tile.dart';

class LatestTransactionItemList extends StatelessWidget {
  const LatestTransactionItemList({super.key});

  static const List<UserInfoModel> items = [
    UserInfoModel(
        image: AppImages.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail.com'),
    UserInfoModel(
        image: AppImages.imagesAvatar2,
        title: 'Josua Nunito',
        subTitle: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        image: AppImages.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (e) => IntrinsicWidth(
                child: UserInfoListTile(
                  userInfoModel: e,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
