import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/presentation/views/signin_view.dart';
import 'package:fruit_hub/features/auth/presentation/views/signup_view.dart';
import 'package:fruit_hub/features/best_selling_fruits.dart/presentation/views/best_selling_view.dart';
import 'package:fruit_hub/features/checkout/presentation/views/checkout_view.dart';
import 'package:fruit_hub/features/home/presentation/views/products_view.dart';
import 'package:fruit_hub/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruit_hub/features/splash/presentation/views/splash_view.dart';

import '../../features/home/presentation/views/main_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(
        builder: (BuildContext context) => const SplashView(),
      );

    case OnBoardingView.routeName:
      return MaterialPageRoute(
        builder: (BuildContext context) => const OnBoardingView(),
      );

    case SigninView.routeName:
      return MaterialPageRoute(
        builder: (BuildContext context) => const SigninView(),
      );

    case SignupView.routeName:
      return MaterialPageRoute(
        builder: (BuildContext context) => const SignupView(),
      );

    case MainView.routeName:
      return MaterialPageRoute(
        builder: (BuildContext context) => const MainView(),
      );

    case BestSellingView.routeName:
      return MaterialPageRoute(
        builder: (BuildContext context) => const BestSellingView(),
      );

    case ProductsView.routeName:
      return MaterialPageRoute(
        builder: (BuildContext context) => const ProductsView(),
      );

    case CheckoutView.routeName:
      return MaterialPageRoute(
        builder: (BuildContext context) => const CheckoutView(),
      );

    default:
      return MaterialPageRoute(
        builder: (BuildContext context) => const Scaffold(),
      );
  }
}
