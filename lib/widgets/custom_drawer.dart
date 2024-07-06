import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/user_info_model.dart';
import 'package:responsivedashboard/utils/app_images.dart';
import 'package:responsivedashboard/widgets/custom_drawer_bottom_section.dart';
import 'package:responsivedashboard/widgets/drawer_items_sliver_list.dart';
import 'package:responsivedashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      width: MediaQuery.sizeOf(context).width * .7,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                image: AppImages.imagesAvatar3,
                title: 'Lekan Okeowo',
                subTitle: 'demo@gmail.com',
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsSliverList(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Spacer(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 32, bottom: 48),
              child: CustomDrawerBottomSection(),
            ),
          ),
        ],
      ),
    );
  }
}
