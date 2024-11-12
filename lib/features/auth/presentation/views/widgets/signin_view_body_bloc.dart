import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/features/auth/presentation/managers/signin_cubit/signin_cubit.dart';

import '../../../../../core/helper_functions/build_toast.dart';
import '../../../../../core/widgets/custom_progress.dart';
import '../../../../../generated/l10n.dart';
import '../../../../home/presentation/views/main_view.dart';
import 'signin_view_body.dart';

class SigninViewBodyBloc extends StatelessWidget {
  const SigninViewBodyBloc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSuccess) {
          buildToast(
            context,
            message: S.of(context).loginSuccessfully,
            state: ToastStates.SUCCESS,
          );

          Navigator.pushNamed(context, MainView.routeName);
        }

        if (state is SigninFailure) {
          buildToast(
            context,
            message: state.message,
            state: ToastStates.ERROR,
          );
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
