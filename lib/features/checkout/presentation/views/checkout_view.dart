import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_app_bar.dart';
import 'package:fruit_hub/features/checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:fruit_hub/generated/l10n.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  static const String routeName = 'checkout';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: S.of(context).shipping,
        navigationIcon: false,
        iconBackButton: true,
      ),
      body: const CheckoutViewBody(),
    );
  }
}
