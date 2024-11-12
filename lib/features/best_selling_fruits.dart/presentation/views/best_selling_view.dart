import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_app_bar.dart';
import 'package:fruit_hub/features/best_selling_fruits.dart/presentation/views/widgets/best_selling_view_body.dart';
import 'package:fruit_hub/generated/l10n.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});

  static const routeName = 'best_selling_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: S.of(context).bestSeller,
      ),
      body: const BestSellingViewBody(),
    );
  }
}
