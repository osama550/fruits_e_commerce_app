import 'package:bloc/bloc.dart';
import 'package:fruits_e_commerce_app/features/authentication/domain/entites/user_entity.dart';
import 'package:fruits_e_commerce_app/features/authentication/domain/repos/auth_repos.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.authRepo) : super(SignInInitial());
  final AuthRepo authRepo;

  Future<void> signin(String email, String password) async {
    emit(SignInLoading());
    final result = await authRepo.signinWithEmailAndPassword(email, password);
    result.fold(
        (failure) =>
            emit(SignInFailure(message: failure.errorMessage.toString())),
        (user) => emit(SignInSuccess(userEntity: user)));
  }
}
