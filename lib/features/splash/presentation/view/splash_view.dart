import 'package:flutter/material.dart';
import 'package:fruits_e_commerce_app/features/splash/presentation/view/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: SplashViewBody()),
    );
  }
}
