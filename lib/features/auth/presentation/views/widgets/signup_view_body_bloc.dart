import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/widgets/custom_progress.dart';
import '../../../../../core/helper_functions/build_toast.dart';
import '../../../../../generated/l10n.dart';
import '../../managers/signup_cubit/signup_cubit.dart';
import 'signup_view_body.dart';

class SignupViewBodyBloc extends StatelessWidget {
  const SignupViewBodyBloc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          buildToast(
            context,
            message: S.of(context).SignupSuccessPleaseLogin,
            state: ToastStates.SUCCESS,
          );
          Navigator.pop(context);
        }

        if (state is SignupFailure) {
          buildToast(
            context,
            message: state.message,
            state: ToastStates.ERROR,
          );
        }
      },
      builder: (context, state) {
        return CustomProgress(
          isLoading: state is SignupLoading ? true : false,
          child: const SignupViewBody(),
        );
      },
    );
  }
}
