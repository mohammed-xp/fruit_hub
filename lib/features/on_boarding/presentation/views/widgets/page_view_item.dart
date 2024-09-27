import 'package:flutter/material.dart';
import 'package:fruit_hub/core/models/on_boarding_model.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:fruit_hub/features/auth/presentation/views/signin_view.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../constants.dart';
import '../../../../../core/services/prefs.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.onBoardingModel,
    required this.isVisible,
  });

  final OnBoardingModel onBoardingModel;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  onBoardingModel.backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(onBoardingModel.image),
              ),
              Visibility(
                visible: isVisible,
                child: GestureDetector(
                  onTap: () {
                    Prefs.setBool(kIsOnBoardingViewSeen, true);
                    Navigator.of(context).pushReplacementNamed(
                      SigninView.routeName,
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      S.of(context).skip,
                      style: AppStyles.styleRegular13(context),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 47,
        ),
        onBoardingModel.title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37.0),
          child: Text(
            onBoardingModel.subtitle,
            style: AppStyles.styleSemiBold13(context),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
