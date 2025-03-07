import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/features/home/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:fruit_hub/features/home/presentation/views/cart_view.dart';
import 'package:fruit_hub/features/home/presentation/views/products_view.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/custom_bottom_navigation_bar.dart';

import 'home_view.dart';
import 'widgets/main_view_body_bloc_listener.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  static const String routeName = 'home_view';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit(),
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
        body: SafeArea(
          //child: _views.elementAt(_selectedIndex),
          child: MainViewBodyBlocListener(
              selectedIndex: _selectedIndex, views: _views),
        ),
      ),
    );
  }

  static const List<Widget> _views = [
    HomeView(),
    ProductsView(),
    CartView(),
  ];
}
