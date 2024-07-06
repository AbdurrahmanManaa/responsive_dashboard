import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/drawer_item_model.dart';
import 'package:responsivedashboard/utils/app_images.dart';
import 'package:responsivedashboard/widgets/drawer_item.dart';

class DrawerItemsSliverList extends StatefulWidget {
  const DrawerItemsSliverList({super.key});

  @override
  State<DrawerItemsSliverList> createState() => _DrawerItemsSliverListState();
}

class _DrawerItemsSliverListState extends State<DrawerItemsSliverList> {
  final List<DrawerItemModel> items = const [
    DrawerItemModel(image: AppImages.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(
        image: AppImages.imagesMyTransaction, title: 'My Transaction'),
    DrawerItemModel(image: AppImages.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(
        image: AppImages.imagesWalletAccount, title: 'Wallet Account'),
    DrawerItemModel(
        image: AppImages.imagesMyInvestments, title: 'My Investments'),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              isActive: activeIndex == index,
              drawerItemModel: items[index],
            ),
          ),
        );
      },
    );
  }
}
