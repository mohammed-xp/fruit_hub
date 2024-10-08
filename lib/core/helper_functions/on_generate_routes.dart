import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/presentation/views/signin_view.dart';
import 'package:fruit_hub/features/auth/presentation/views/signup_view.dart';
import 'package:fruit_hub/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruit_hub/features/splash/presentation/views/splash_view.dart';

import '../../features/home/presentation/views/home_view.dart';

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

    case HomeView.routeName:
      return MaterialPageRoute(
        builder: (BuildContext context) => const HomeView(),
      );

    default:
      return MaterialPageRoute(
        builder: (BuildContext context) => const Scaffold(),
      );
  }
}
