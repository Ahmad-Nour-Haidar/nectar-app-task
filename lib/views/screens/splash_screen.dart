import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:task/core/constant/app_color.dart';
import 'package:task/routers.dart';

import '../../core/constant/app_svgs.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 1500), () {
      context.push(AppRouter.onboardingScreen);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: Center(
        child: FadeIn(
          duration: const Duration(milliseconds: 500),
          delay: const Duration(milliseconds: 100),
          child: SvgPicture.asset(AppSvgs.logo),
        ),
      ),
    );
  }
}
