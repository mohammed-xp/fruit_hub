import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/features/auth/presentation/managers/signin_cubit/signin_cubit.dart';

import '../../../../../core/helper_functions/build_error_bar.dart';
import '../../../../../core/widgets/custom_progress.dart';
import 'signin_view_body.dart';

class SigninViewBodyBloc extends StatelessWidget {
  const SigninViewBodyBloc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSuccess) {}

        if (state is SigninFailure) {
          buildErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
        return CustomProgress(
          isLoading: state is SigninLoading ? true : false,
          child: const SigninViewBody(),
        );
      },
    );
  }
}
