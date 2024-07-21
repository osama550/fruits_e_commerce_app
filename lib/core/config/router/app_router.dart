import 'package:fruits_e_commerce_app/core/config/router/app_routes.dart';
import 'package:fruits_e_commerce_app/features/authentication/view/login_view.dart';
import 'package:fruits_e_commerce_app/features/authentication/view/sign_up_view.dart';
import 'package:fruits_e_commerce_app/features/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:fruits_e_commerce_app/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: AppRoutes.splashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: AppRoutes.onBoardingView,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: AppRoutes.loginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: AppRoutes.signUpView,
        builder: (context, state) => const SignUpView(),
      ),
    ],
  );
}
