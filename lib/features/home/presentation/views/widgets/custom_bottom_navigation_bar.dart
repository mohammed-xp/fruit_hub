import 'package:flutter/material.dart';
import 'package:fruit_hub/features/home/domain/entites/bottom_navigation_bar_entity.dart';
import 'navigation_bar_item.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  var activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 7,
            offset: Offset(0, -2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:
            BottomNavigationBarEntity.items(context).asMap().entries.map((e) {
          var index = e.key;
          var entity = e.value;
          return Expanded(
            flex: activeIndex == index ? 3 : 2,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  activeIndex = index;
                });
              },
              child: NavigationBarItem(
                isActive: activeIndex == index,
                entity: entity,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
