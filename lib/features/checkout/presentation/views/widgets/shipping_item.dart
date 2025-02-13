import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_color.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';

class ShippingItem extends StatelessWidget {
  const ShippingItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.isSelected,
    required this.onPressed,
  });

  final String title, subTitle, price;
  final bool isSelected;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        // width: 343,
        // height: 81,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        decoration: BoxDecoration(
          color: const Color(0xffD9D9D9).withOpacity(0.2),
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          border: isSelected
              ? Border.all(
                  color: AppColor.primaryColor,
                )
              : null,
        ),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              isSelected
                  ? const ActiveShippingItemDot()
                  : const InActiveShippingItemDot(),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppStyles.styleSemiBold13(context).copyWith(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    subTitle,
                    style: AppStyles.styleRegular13(context).copyWith(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Center(
                child: Text(
                  price,
                  style: AppStyles.styleBold13(context).copyWith(
                    color: AppColor.lightPrimaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InActiveShippingItemDot extends StatelessWidget {
  const InActiveShippingItemDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: 18,
      decoration: const ShapeDecoration(
        shape: OvalBorder(
          side: BorderSide(width: 1, color: Color(0xFF949D9E)),
        ),
      ),
    );
  }
}

class ActiveShippingItemDot extends StatelessWidget {
  const ActiveShippingItemDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: 18,
      decoration: const ShapeDecoration(
        color: Color(0xFF1B5E37),
        shape: OvalBorder(
          side: BorderSide(width: 4, color: Colors.white),
        ),
      ),
    );
  }
}
