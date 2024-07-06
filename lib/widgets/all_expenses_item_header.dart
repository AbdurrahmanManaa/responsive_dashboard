import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsivedashboard/utils/app_images.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.image,
      required this.backgroundColor,
      required this.imageColor,
      required this.arrowColor});
  final String image;
  final Color backgroundColor, imageColor, arrowColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 60,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  color: backgroundColor,
                  shape: const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                      imageColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633,
          child: SvgPicture.asset(
            AppImages.imagesArrow,
            colorFilter: ColorFilter.mode(
              arrowColor,
              BlendMode.srcIn,
            ),
          ),
        ),
      ],
    );
  }
}
