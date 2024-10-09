import 'package:flutter/material.dart';

import 'featured_item.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(4, (index) => const FeaturedItem()),
      ),
    );
    // ignore: dead_code
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context, index) => const FeaturedItem(),
    );
  }
}
