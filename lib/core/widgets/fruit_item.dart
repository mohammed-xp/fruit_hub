import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_color.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:svg_flutter/svg_flutter.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffF3F5F7),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Stack(
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              Assets.imagesHeartIcon,
            ),
          ),
          Column(
            children: [
              Image.asset(
                Assets.imagesWatermelonTest,
              ),
              const SizedBox(
                height: 24,
              ),
              ListTile(
                title: Text(
                  "بطيخ",
                  style: AppStyles.styleSemiBold13(context).copyWith(
                    color: Colors.black,
                  ),
                ),
                subtitle: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "20 جنيه",
                        style: AppStyles.styleBold13(context).copyWith(
                          color: AppColor.secendaryColor,
                        ),
                      ),
                      TextSpan(
                        text: " / ",
                        style: AppStyles.styleBold13(context).copyWith(
                          color: const Color(0xffF4A91F),
                        ),
                      ),
                      TextSpan(
                        text: "كيلو",
                        style: AppStyles.styleSemiBold13(context).copyWith(
                          color: AppColor.lightSecendaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: const CircleAvatar(
                  backgroundColor: AppColor.primaryColor,
                  child: Icon(
                    Icons.add_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
