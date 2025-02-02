import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/cubits/products_cubit/products_cubit.dart';
import 'package:fruit_hub/core/widgets/custom_app_bar.dart';
import 'package:fruit_hub/core/widgets/custom_search_text_field.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/products_grid_view_bloc.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/products_view_header.dart';
import 'package:fruit_hub/generated/l10n.dart';

class ProductsViewBody extends StatefulWidget {
  const ProductsViewBody({super.key});

  @override
  State<ProductsViewBody> createState() => _ProductsViewBodyState();
}

class _ProductsViewBodyState extends State<ProductsViewBody> {
  @override
  void initState() {
    context.read<ProductsCubit>().getProducts(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                CustomAppBar(context, title: S.of(context).products),
                const SizedBox(
                  height: kTopPadding,
                ),
                const CustomSearchTextField(),
                const SizedBox(
                  height: 12,
                ),
                BlocBuilder<ProductsCubit, ProductsState>(
                  builder: (context, state) {
                    return ProductsViewHeader(
                      productsCount:
                          state is ProductsSuccess ? state.products.length : 0,
                    );
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
          const ProductsGridViewBloc(),
        ],
      ),
    );
  }
}
