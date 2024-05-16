import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:task/core/constant/app_color.dart';
import 'package:task/core/constant/app_images.dart';

import '../widgets/custom_button.dart';

class OrderAcceptedScreen extends StatelessWidget {
  const OrderAcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const Gap(48),
              Image.asset(AppImages.check),
              const Gap(16),
              const Text(
                'Your Order has been accepted',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w400,
                  color: AppColor.black,
                ),
              ),
              const Gap(16),
              const Text(
                'Your items has been placcd and is on it’s way to being processed',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColor.grey,
                ),
              ),
              const Spacer(),
              CustomButton(
                onPressed: () {},
                height: 65,
                radius: 20,
                child: const Text(
                  'Track order',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: AppColor.white,
                  ),
                ),
              ),
              const Gap(8),
              TextButton(
                onPressed: () {},
                // height: 65,
                // radius: 20,
                child: const Text(
                  'Back to home',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: AppColor.fontColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
