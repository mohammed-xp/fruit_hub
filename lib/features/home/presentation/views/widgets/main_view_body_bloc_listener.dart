import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/helper_functions/build_toast.dart';
import 'package:fruit_hub/features/home/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:fruit_hub/generated/l10n.dart';

import 'main_view_body.dart';

class MainViewBodyBlocListener extends StatelessWidget {
  const MainViewBodyBlocListener({
    super.key,
    required int selectedIndex,
    required List<Widget> views,
  })  : _selectedIndex = selectedIndex,
        _views = views;

  final int _selectedIndex;
  final List<Widget> _views;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CartCubit, CartState>(
      listener: (context, state) {
        if (state is CartProductAdded) {
          buildToast(
            context,
            message: S.of(context).addProductInCart,
            state: ToastStates.SUCCESS,
          );
        }
        if (state is CartItemRemoved) {
          buildToast(
            context,
            message: S.of(context).removeProductFromCart,
            state: ToastStates.SUCCESS,
          );
        }
      },
      child: MainViewBody(selectedIndex: _selectedIndex, views: _views),
    );
  }
}
