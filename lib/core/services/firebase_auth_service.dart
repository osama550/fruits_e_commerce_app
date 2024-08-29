import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_e_commerce_app/core/errors/exceptions.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()} and code is ${e.code}");
      if (e.code == 'weak-password') {
        throw CustomException(message: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
            message: 'The account already exists for that email.');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(
            message: 'Please check your internet connection and try again.');
      } else {
        throw CustomException(
            message: 'An unknown error occurred. Please try again.');
      }
    } catch (e) {
      log("Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()}");

      throw CustomException(
          message: 'An unknown error occurred. Please try again.');
    }
  }
}
