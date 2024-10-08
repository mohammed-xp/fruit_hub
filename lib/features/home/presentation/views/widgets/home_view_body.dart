import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/widgets/custom_search_text_field.dart';

import 'custom_home_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                CustomHomeAppBar(),
                SizedBox(
                  height: kTopPadding,
                ),
                CustomSearchTextField(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
