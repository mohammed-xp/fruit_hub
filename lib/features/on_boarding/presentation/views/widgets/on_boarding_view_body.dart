import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/services/prefs.dart';
import 'package:fruit_hub/core/utils/app_color.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/features/auth/presentation/views/login_view.dart';
import 'package:fruit_hub/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';

import '../../../../../core/models/on_boarding_model.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../generated/l10n.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  static List<OnBoardingModel> onBoardingList(context) => [
        OnBoardingModel(
          image: Assets.imagesPageViewItem1Image,
          backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
          subtitle: S.of(context).onBoardingSubTitle1,
          title: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '${S.of(context).helloIn} ',
                  style: AppStyles.styleBold23(context),
                ),
                TextSpan(
                  text: S.of(context).fruit,
                  style: AppStyles.styleBold23(context).copyWith(
                    color: AppColor.primaryColor,
                  ),
                ),
                TextSpan(
                  text: S.of(context).hub,
                  style: AppStyles.styleBold23(context).copyWith(
                    color: AppColor.secendaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        OnBoardingModel(
          image: Assets.imagesPageViewItem2Image,
          backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
          subtitle: S.of(context).onBoardingSubTitle2,
          title: Text(
            S.of(context).searchAndShop,
            style: AppStyles.styleBold23(context),
          ),
        ),
      ];

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;

  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<OnBoardingModel> onBoardingItems =
        OnBoardingViewBody.onBoardingList(context);
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(
            onBoardingList: onBoardingItems,
            pageController: pageController,
          ),
        ),
        DotsIndicator(
          dotsCount: OnBoardingViewBody.onBoardingList(context).length,
          position: 1,
          decorator: DotsDecorator(
            activeColor: AppColor.primaryColor,
            color: currentPage ==
                    OnBoardingViewBody.onBoardingList(context).length - 1
                ? AppColor.primaryColor
                : AppColor.primaryColor.withOpacity(0.5),
          ),
        ),
        const SizedBox(
          height: 29,
        ),
        Visibility(
          visible: currentPage ==
              OnBoardingViewBody.onBoardingList(context).length - 1,
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kHorizontalPadding,
            ),
            child: CustomButton(
              onPressed: () {
                Prefs.setBool(kIsOnBoardingViewSeen, true);
                Navigator.of(context).pushReplacementNamed(
                  LoginView.routeName,
                );
              },
              text: S.of(context).startNow,
            ),
          ),
        ),
        const SizedBox(
          height: 43,
        ),
      ],
    );
  }
}
