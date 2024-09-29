import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../domain/entites/user_entity.dart';
import '../../../domain/repos/auth_repo.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitial());

  final AuthRepo authRepo;

  Future<void> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    emit(SigninLoading());
    var result = await authRepo.signInWithEmailAndPassword(email, password);
    result.fold(
      (failure) {
        emit(SigninFailure(message: failure.message));
      },
      (user) {
        emit(SigninSuccess(userEntity: user));
      },
    );
  }

  Future<void> signInWithGoogle() async {
    emit(SigninLoading());
    var result = await authRepo.signInWithGoogle();
    result.fold(
      (failure) {
        emit(SigninFailure(message: failure.message));
      },
      (user) {
        emit(SigninSuccess(userEntity: user));
      },
    );
  }

  Future<void> signInWithFacebook() async {
    emit(SigninLoading());
    var result = await authRepo.signInWithFacebook();
    result.fold(
      (failure) {
        emit(SigninFailure(message: failure.message));
      },
      (user) {
        emit(SigninSuccess(userEntity: user));
      },
    );
  }
}
