import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fruits_e_commerce_app/core/utils/app_colors.dart';
import 'package:fruits_e_commerce_app/core/utils/app_images.dart';
import 'package:fruits_e_commerce_app/core/utils/functions/app_text_styles.dart';
import 'package:fruits_e_commerce_app/features/on_boarding/presentation/view/widgets/page_view_item.dart';

class OnBoardingBageView extends StatelessWidget {
  const OnBoardingBageView({super.key, required this.pageController});

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible: true,
          image: Assets.imagesPageViewItem1Image,
          backgroundImage: Assets.imagesPageViewItem1Background,
          subtitle: context.tr("onBoardingSubTitle1"),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                context.tr("onBoardingTitle1"),
                style: TextStyles.bold23,
              ),
              Text(
                ' Fruit',
                style: TextStyles.bold23.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
              Text(
                'HUB',
                style: TextStyles.bold23.copyWith(
                  color: AppColors.secondaryColor,
                ),
              ),
            ],
          ),
        ),
        PageViewItem(
          isVisible: false,
          image: Assets.imagesPageViewItem2Image,
          backgroundImage: Assets.imagesPageViewItem2Background,
          subtitle: context.tr("onBoardingSubTitle2"),
          title: Text(
            context.tr("onBoardingTitle2"),
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF0C0D0D),
              fontSize: 23,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        )
      ],
    );
  }
}
