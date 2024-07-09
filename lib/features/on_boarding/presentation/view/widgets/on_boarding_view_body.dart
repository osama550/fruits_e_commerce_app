import 'package:dots_indicator/dots_indicator.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fruits_e_commerce_app/core/cache/cache_helper.dart';
import 'package:fruits_e_commerce_app/core/config/router/app_routes.dart';
import 'package:fruits_e_commerce_app/core/utils/app_colors.dart';
import 'package:fruits_e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:fruits_e_commerce_app/features/on_boarding/presentation/view/widgets/on_boarding_bage_view.dart';
import 'package:go_router/go_router.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;

  var currentPage = 0;
  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingBageView(
            pageController: pageController,
          ),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: currentPage == 1
                ? AppColors.primaryColor
                : AppColors.primaryColor.withOpacity(.5),
          ),
        ),
        const SizedBox(
          height: 29,
        ),
        Visibility(
          visible: currentPage == 1 ? true : false,
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: CustomButton(
              onPressed: () {
                CacheHelper.saveData(key: "isInBoardingSeen", value: true);
                GoRouter.of(context).pushReplacement(AppRoutes.loginView);
              },
              text: context.tr("Startnow"),
            ),
          ),
        ),
        const SizedBox(
          height: 43,
        ),
      ],
    );
  }
}
