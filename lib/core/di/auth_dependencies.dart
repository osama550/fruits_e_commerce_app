import 'package:fruits_e_commerce_app/core/services/firebase_auth_service.dart';
import 'package:fruits_e_commerce_app/features/authentication/data/repos/repos_impl.dart';
import 'package:fruits_e_commerce_app/features/authentication/domain/repos/auth_repos.dart';

import 'service_locator.dart';

void registerAuthDepndencies() {
  //* DATA SOURCE
sl.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  //* REPOSITORY
   sl.registerSingleton<AuthRepo>(AuthRepoImpl(firebaseAuthService:  sl<FirebaseAuthService>()));
}
