import 'package:fruits_e_commerce_app/core/config/router/app_routes.dart';
import 'package:fruits_e_commerce_app/features/home/home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: AppRoutes.homeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
