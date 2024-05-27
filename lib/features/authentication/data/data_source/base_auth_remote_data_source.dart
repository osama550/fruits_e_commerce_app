import 'package:fruits_e_commerce_app/features/authentication/data/models/user_data_model.dart';
import 'package:fruits_e_commerce_app/features/authentication/data/requests/login_request.dart';

abstract class BaseAuthRemoteDataSource {
  Future<UserDataModel> login(LoginRequest request);
}
