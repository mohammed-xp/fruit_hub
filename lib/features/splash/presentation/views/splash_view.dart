import 'package:flutter/material.dart';
import 'package:fruit_hub/features/splash/presentation/views/widgets/splash_view_body.dart';

import '../../../on_boarding/presentation/views/on_boarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  static const routeName = 'splashView';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }

  void excuteNavigation() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
    });
  }
}
