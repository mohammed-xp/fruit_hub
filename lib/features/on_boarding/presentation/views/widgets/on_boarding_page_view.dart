import 'package:flutter/material.dart';
import 'package:fruit_hub/core/models/on_boarding_model.dart';
import 'page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
    required this.onBoardingList,
    required this.pageController,
  });
  final List<OnBoardingModel> onBoardingList;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: onBoardingList
          .map((onBoardingModel) => PageViewItem(
                onBoardingModel: onBoardingModel,
                isVisible: (pageController.hasClients
                        ? pageController.page!.round()
                        : 0) !=
                    onBoardingList.length - 1,
              ))
          .toList(),
    );
  }
}
