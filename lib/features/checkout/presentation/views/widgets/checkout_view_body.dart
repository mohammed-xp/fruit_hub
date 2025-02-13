import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/features/checkout/presentation/views/widgets/checkout_steps.dart';
import 'package:fruit_hub/generated/l10n.dart';

import 'check_out_steps_page_view.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key});

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        children: [
          const CheckoutSteps(),
          const SizedBox(
            height: 24,
          ),
          Expanded(
            child: CheckoutStepsPageView(pageController: _pageController),
          ),
          CustomButton(
            onPressed: () {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeIn,
              );
            },
            text: S.of(context).next,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
