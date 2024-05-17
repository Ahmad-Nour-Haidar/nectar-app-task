import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../core/constant/app_color.dart';
import '../../core/constant/app_svgs.dart';
import 'custom_button.dart';
import 'custom_row_with_icon.dart';

class CheckoutWidget extends StatelessWidget {
  const CheckoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      height: MediaQuery.sizeOf(context).height * .75,
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
                ),
                const Gap(32),
                CustomButton(
                  onPressed: () {},
                  height: 65,
                  radius: 20,
                  child: const Text(
                    'Place order',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: AppColor.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
