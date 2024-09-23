import 'package:flutter/material.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/utils/app_color.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:fruit_hub/generated/l10n.dart';

import 'dont_have_account_widget.dart';
import 'soical_text_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            CustomTextFormField(
              hintText: S.of(context).email,
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              hintText: S.of(context).password,
              textInputType: TextInputType.visiblePassword,
              suffixIcon: const Icon(
                Icons.visibility_off,
                color: Color(0xffC9CECF),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  S.of(context).forgotPassword,
                  style: AppStyles.styleSemiBold13(context).copyWith(
                    color: AppColor.lightPrimaryColor,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 33,
            ),
            CustomButton(
              onPressed: () {},
              text: S.of(context).login,
            ),
            const SizedBox(
              height: 33,
            ),
            const DontHaveAccountWidget(),
            const SizedBox(
              height: 33,
            ),
            const OrDivider(),
            const SizedBox(
              height: 16,
            ),
            SoicalTextButton(
              title: S.of(context).loginWithGoogle,
              image: Assets.imagesGoogleIcon,
              onPressed: () {},
            ),
            const SizedBox(
              height: 16,
            ),
            SoicalTextButton(
              title: S.of(context).loginWithApple,
              image: Assets.imagesAppleIcon,
              onPressed: () {},
            ),
            const SizedBox(
              height: 16,
            ),
            SoicalTextButton(
              title: S.of(context).loginWithFacebook,
              image: Assets.imagesFacebookIcon,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
