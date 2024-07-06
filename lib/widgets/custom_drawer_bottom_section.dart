import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/drawer_item_model.dart';
import 'package:responsivedashboard/utils/app_images.dart';
import 'package:responsivedashboard/widgets/active_and_inactive_drawer_item.dart';

class CustomDrawerBottomSection extends StatelessWidget {
  const CustomDrawerBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        InActiveDrawerItem(
          drawerItemModel: DrawerItemModel(
              image: AppImages.imagesSettings, title: 'Setting system'),
        ),
        SizedBox(
          height: 20,
        ),
        InActiveDrawerItem(
          drawerItemModel: DrawerItemModel(
              image: AppImages.imagesLogout, title: 'Logout account'),
        ),
      ],
    );
  }
}
