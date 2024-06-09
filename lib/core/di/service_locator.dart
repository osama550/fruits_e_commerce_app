import 'package:fruits_e_commerce_app/core/api/api_service.dart';
import 'package:get_it/get_it.dart';

import 'auth_dependencies.dart';

GetIt sl = GetIt.instance;

Future<void> setUpServiceLocator() async {
  //* Register the API service as a singleton.
  sl.registerSingleton(ApiService());
  // sl.registerSingleton<CacheHelper>(CacheHelper());

  //* Register the dependencies related to authentication.
  registerAuthDepndencies();
}
