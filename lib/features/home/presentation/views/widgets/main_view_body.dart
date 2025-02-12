import 'package:flutter/material.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({
    super.key,
    required int selectedIndex,
    required List<Widget> views,
  })  : _selectedIndex = selectedIndex,
        _views = views;

  final int _selectedIndex;
  final List<Widget> _views;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: _selectedIndex,
      children: _views,
    );
  }
}
