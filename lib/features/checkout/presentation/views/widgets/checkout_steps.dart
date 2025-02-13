import 'package:flutter/material.dart';
import 'package:fruit_hub/features/checkout/presentation/views/widgets/step_item.dart';
import 'package:fruit_hub/generated/l10n.dart';

class CheckoutSteps extends StatelessWidget {
  const CheckoutSteps({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        getSteps(context).length,
        (index) => StepItem(
          text: getSteps(context)[index],
          index: index + 1,
          isActive: false,
        ),
      ),
    );
  }

  List<String> getSteps(context) => [
        S.of(context).shipping,
        S.of(context).address,
        S.of(context).payment,
        S.of(context).review,
      ];
}
