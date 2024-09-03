import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_e_commerce_app/core/config/router/app_routes.dart';
import 'package:fruits_e_commerce_app/core/services/service_locator.dart';
import 'package:fruits_e_commerce_app/features/authentication/domain/repos/auth_repos.dart';
import 'package:fruits_e_commerce_app/features/authentication/presentation/view/controller/signin_cubit/sign_in_cubit.dart';
import 'package:fruits_e_commerce_app/features/authentication/presentation/view/controller/signup_cubit/sign_up_cubit.dart';
import 'package:fruits_e_commerce_app/features/authentication/presentation/view/sign_in_view.dart';
import 'package:fruits_e_commerce_app/features/authentication/presentation/view/sign_up_view.dart';
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
        path: AppRoutes.signinView,
        builder: (context, state) => BlocProvider(
          create: (context) => SignInCubit(getIt.get<AuthRepo>()),
          child: const SigninView(),
        ),
      ),
      GoRoute(
        path: AppRoutes.signUpView,
        builder: (context, state) => BlocProvider(
          create: (context) => SignUpCubit(getIt.get<AuthRepo>()),
          child: const SignUpView(),
        ),
      ),
    ],
  );
}
