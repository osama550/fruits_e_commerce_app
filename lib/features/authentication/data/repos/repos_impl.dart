import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fruits_e_commerce_app/core/errors/exceptions.dart';
import 'package:fruits_e_commerce_app/core/errors/failure.dart';
import 'package:fruits_e_commerce_app/core/services/firebase_auth_service.dart';
import 'package:fruits_e_commerce_app/features/authentication/data/models/user_model.dart';
import 'package:fruits_e_commerce_app/features/authentication/domain/entites/user_entity.dart';
import 'package:fruits_e_commerce_app/features/authentication/domain/repos/auth_repos.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.toString()));
    } catch (e) {
      log("Exeption in createUserWithEmailAndPassword ${e.toString()}");
      return left(ServerFailure(
        'An unknown error occurred. Please try again.',
      ));
    }
  }

  @override
  Future addUserData({required UserEntity user}) {
    // TODO: implement addUserData
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithApple() {
    // TODO: implement signinWithApple
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithEmailAndPassword(
      String email, String password) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.toString()));
    } catch (e) {
      log("Exeption in signinWithEmailAndPassword ${e.toString()}");
      return left(ServerFailure(
        'An unknown error occurred. Please try again.',
      ));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithFacebook() {
    // TODO: implement signinWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithGoogle() async {
    try {
      var user = await firebaseAuthService.signInWithGoogle();
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.toString()));
    } catch (e) {
      log("Exeption in signinWithGoogle ${e.toString()}");
      return left(ServerFailure(
        'An unknown error occurred. Please try again.',
      ));
    }
  }
}
