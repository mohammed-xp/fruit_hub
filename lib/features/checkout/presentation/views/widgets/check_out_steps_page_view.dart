import 'package:flutter/material.dart';
import 'package:fruit_hub/features/checkout/presentation/views/widgets/address_input_section.dart';

import 'shipping_section.dart';

class CheckoutStepsPageView extends StatelessWidget {
  const CheckoutStepsPageView({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: getPages().length,
      itemBuilder: (context, index) {
        return getPages()[index];
      },
    );
  }

  List<Widget> getPages() => [
        const ShippingSection(),
        const AddressInputSection(),
        const Placeholder(),
        const Placeholder(),
      ];
}
