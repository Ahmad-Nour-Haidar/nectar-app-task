import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:task/core/constant/app_images.dart';
import 'package:task/routers.dart';
import 'package:task/views/widgets/custom_button.dart';

import '../../core/theme/app_colors.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            AppImages.onbording,
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        body: Column(
          children: [
            const Expanded(flex: 2, child: SizedBox()),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Align(child: Image.asset(AppImages.logo)),
                    const Text(
                      'Welcome to our store',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 48,
                        color: AppColors.white,
                      ),
                    ),
                    const Text(
                      'Ger your groceries in as fast as one hour',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: AppColors.white70,
                      ),
                    ),
                    const Gap(50),
                    CustomButton(
                      onPressed: () {
                        context.go(AppRouter.homeScreen);
                      },
                      height: 65,
                      radius: 20,
                      child: const Text(
                        'Get started',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
