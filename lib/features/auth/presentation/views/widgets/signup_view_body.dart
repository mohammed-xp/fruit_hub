import 'package:flutter/material.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/terms_and_conditions.dart';
import '../../../../../generated/l10n.dart';
import 'have_account_widget.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

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
              hintText: S.of(context).fullName,
              textInputType: TextInputType.name,
            ),
            const SizedBox(
              height: 16,
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
              suffixIcon: const Icon(
                Icons.visibility,
                color: Color(0xffC9CECF),
              ),
              textInputType: TextInputType.visiblePassword,
            ),
            const SizedBox(
              height: 16,
            ),
            const TermsAndConditions(),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              onPressed: () {},
              text: S.of(context).createANewAccount,
            ),
            const SizedBox(
              height: 26,
            ),
            const HaveAccountWidget()
          ],
        ),
      ),
    );
  }
}
