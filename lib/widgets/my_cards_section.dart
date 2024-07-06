import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/app_styles.dart';
import 'package:responsivedashboard/widgets/dot_indicator_list.dart';
import 'package:responsivedashboard/widgets/my_cards_page_view.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardsPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 20,
        ),
        DotIndicatorList(
          currentPageIndex: currentPageIndex,
        ),
      ],
    );
  }
}
