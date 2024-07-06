import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsivedashboard/models/user_info_model.dart';
import 'package:responsivedashboard/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoModel});

  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.image),
          title: FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child: Text(
              userInfoModel.title,
              style: AppStyles.styleSemiBold16(context),
            ),
          ),
          subtitle: FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child: Text(
              userInfoModel.subTitle,
              style: AppStyles.styleRegular12(context),
            ),
          ),
        ),
      ),
    );
  }
}
