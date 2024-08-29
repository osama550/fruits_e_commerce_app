import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fruits_e_commerce_app/features/authentication/domain/entites/user_entity.dart';
import 'package:fruits_e_commerce_app/features/authentication/domain/repos/auth_repos.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRepo) : super(SignUpInitial());
  final AuthRepo authRepo;
  Future<void> createUserWithEmailAndPassword(
      String email,
      String password,
      String name,) async {
    emit(SignUpLoading());
    final result = await authRepo.createUserWithEmailAndPassword(
        email,
        password,
        name,
       );
    result.fold(
        (failure) =>
            emit(SignUpFailure(message: failure.errorMessage.toString())),
        (user) => emit(SignUpSuccess(userEntity: user)));
  }
}
