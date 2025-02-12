import 'package:flutter/material.dart';

class CartItemActionButton extends StatelessWidget {
  const CartItemActionButton({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.color,
    required this.onPressed,
  });

  final IconData icon;
  final Color iconColor;
  final Color color;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24,
      height: 24,
      child: IconButton(
        onPressed: onPressed,
        iconSize: 18,
        // padding: EdgeInsets.zero,
        style: IconButton.styleFrom(
          padding: EdgeInsets.zero,
          // minimumSize: const Size(24, 24),
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        icon: FittedBox(
          child: Icon(
            icon,
            color: iconColor,
            // size: 20,
          ),
        ),
      ),
    );
  }
}
