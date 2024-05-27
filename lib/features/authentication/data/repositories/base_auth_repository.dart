import 'package:dartz/dartz.dart';
import 'package:fruits_e_commerce_app/core/errors/failure.dart';
import 'package:fruits_e_commerce_app/features/authentication/data/models/user_data_model.dart';
import 'package:fruits_e_commerce_app/features/authentication/data/requests/login_request.dart';

abstract class BaseAuthRepository {
  Future<Either<Failure, UserDataModel>> login(LoginRequest request);
}
