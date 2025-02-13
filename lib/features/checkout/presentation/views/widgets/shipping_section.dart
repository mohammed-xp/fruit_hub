import 'package:flutter/material.dart';
import 'package:fruit_hub/features/checkout/presentation/views/widgets/shipping_item.dart';

import '../../../../../generated/l10n.dart';

class ShippingSection extends StatefulWidget {
  const ShippingSection({super.key});

  @override
  State<ShippingSection> createState() => _ShippingSectionState();
}

class _ShippingSectionState extends State<ShippingSection> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 8,
        ),
        ShippingItem(
          title: S.of(context).cashOnDelivery,
          subTitle: S.of(context).deliveryFromThePlace,
          price: '40 ${S.of(context).sdg}',
          isSelected: selectedIndex == 0,
          onPressed: () {
            setState(() {
              selectedIndex = 0;
            });
          },
        ),
        const SizedBox(
          height: 8,
        ),
        ShippingItem(
          title: S.of(context).payOnline,
          subTitle: S.of(context).pleaseSelectPaymentMethod,
          price: '40 ${S.of(context).sdg}',
          isSelected: selectedIndex == 1,
          onPressed: () {
            setState(() {
              selectedIndex = 1;
            });
          },
        ),
      ],
    );
  }
}
