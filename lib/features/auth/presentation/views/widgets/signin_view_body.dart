import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/utils/app_color.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_password_field.dart';
import 'package:fruit_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/features/auth/presentation/managers/signin_cubit/signin_cubit.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:fruit_hub/generated/l10n.dart';

import 'dont_have_account_widget.dart';
import 'soical_text_button.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late String email, password;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                hintText: S.of(context).email,
                textInputType: TextInputType.emailAddress,
                onSaved: (value) {
                  email = value!;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              CustomPasswordField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              // CustomTextFormField(
              //   hintText: S.of(context).password,
              //   textInputType: TextInputType.visiblePassword,
              //   suffixIcon: const Icon(
              //     Icons.visibility_off,
              //     color: Color(0xffC9CECF),
              //   ),
              // ),
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
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.read<SigninCubit>().signInWithEmailAndPassword(
                          email: email,
                          password: password,
                        );
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
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
                onPressed: () {
                  context.read<SigninCubit>().signInWithGoogle();
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Platform.isIOS
                  ? SoicalTextButton(
                      title: S.of(context).loginWithApple,
                      image: Assets.imagesAppleIcon,
                      onPressed: () {
                        context.read<SigninCubit>().signInWithApple();
                      },
                    )
                  : const SizedBox(),
              Platform.isIOS
                  ? const SizedBox(
                      height: 16,
                    )
                  : const SizedBox(),
              SoicalTextButton(
                title: S.of(context).loginWithFacebook,
                image: Assets.imagesFacebookIcon,
                onPressed: () {
                  context.read<SigninCubit>().signInWithFacebook();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
