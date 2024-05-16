import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../core/constant/app_color.dart';
import '../../core/constant/app_svgs.dart';

class CheckoutWidget extends StatelessWidget {
  const CheckoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'Checkout',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  color: AppColor.fontColor,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                const Divider(),
                CustomRowWithIcon(
                  text1: 'Delivery',
                  text2: 'Select Method',
                  onTap: () {},
                ),
                const Divider(),
                CustomRowWithIcon(
                  text1: 'Payment',
                  child: SvgPicture.asset(AppSvgs.payment),
                  onTap: () {},
                ),
                const Divider(),
                CustomRowWithIcon(
                  text1: 'Promo Code',
                  text2: 'Pick discount',
                  onTap: () {},
                ),
                const Divider(),
                CustomRowWithIcon(
                  text1: 'Total Cost',
                  text2: '\$13.97',
                  onTap: () {},
                ),
                const Divider(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width * .7,
                    child: const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'By placing an order you agree to our ',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: AppColor.grey,
                            ),
                          ),
                          TextSpan(
                            text: 'Terms',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: AppColor.black,
                            ),
                          ),
                          TextSpan(
                            text: ' And ',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: AppColor.grey,
                            ),
                          ),
                          TextSpan(
                            text: 'Conditions',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: AppColor.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomRowWithIcon extends StatelessWidget {
  const CustomRowWithIcon({
    super.key,
    required this.text1,
    required this.onTap,
    this.text2,
    this.child,
  });

  final String text1;
  final String? text2;
  final VoidCallback onTap;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text1,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: AppColor.grey,
          ),
        ),
        const Spacer(),
        if (child != null) child!,
        if (text2 != null)
          Text(
            text2!,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: AppColor.fontColor,
            ),
          ),
        IconButton(
          onPressed: onTap,
          icon: Transform.flip(
            flipX: true,
            child: const Icon(Icons.arrow_back_ios_rounded),
          ),
        )
      ],
    );
  }
}
