import 'package:flutter/material.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:svg_flutter/svg.dart';

import '../utils/app_images.dart';
import '../utils/app_styles.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 9,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: IconButton(
            icon: SvgPicture.asset(Assets.imagesSearchIcon),
            onPressed: () {},
          ),
          suffixIcon: IconButton(
            icon: SvgPicture.asset(Assets.imagesFilterIcon),
            onPressed: () {},
          ),
          hintText: S.of(context).searchFor,
          hintStyle: AppStyles.styleBold13(context).copyWith(
            color: const Color(0xff949D9E),
          ),
          filled: true,
          fillColor: Colors.white,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
