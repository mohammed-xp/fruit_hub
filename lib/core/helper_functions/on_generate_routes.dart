import 'package:flutter/material.dart';
import 'package:fruit_hub/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(
        builder: (BuildContext context) => const SplashView(),
      );
    default:
      return MaterialPageRoute(
        builder: (BuildContext context) => const Scaffold(),
      );
  }
}
