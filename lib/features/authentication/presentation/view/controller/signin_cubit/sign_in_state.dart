part of 'sign_in_cubit.dart';

sealed class SignInState {
  const SignInState();
}

final class SignInInitial extends SignInState {}

class SignInLoading extends SignInState {}

class SignInSuccess extends SignInState {
  final UserEntity userEntity;

  const SignInSuccess({required this.userEntity});
}

class SignInFailure extends SignInState {
  final String message;

  const SignInFailure({required this.message});
}
