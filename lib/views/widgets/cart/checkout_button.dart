import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task/routers.dart';

import '../../../core/theme/app_colors.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
      child: ElevatedButton(
        onPressed: () {
          GoRouter.of(context).push(AppRouter.orderAcceptedView);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              16,
            ),
          ),
          fixedSize: const Size.fromHeight(70),
        ),
        child: Row(
          children: [
            const Spacer(
              flex: 4,
            ),
            const Text(
              'Go To Checkout',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xff489E67),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    6,
                  ),
                ),
              ),
              padding: const EdgeInsets.all(6),
              child: const Text(
                '\$12.96',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
