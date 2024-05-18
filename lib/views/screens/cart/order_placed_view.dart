import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/assets/app_svgs.dart';
import '../../widgets/cart/back_to_home_button.dart';
import '../../widgets/cart/track_order_button.dart';

class OrderAcceptedScreen extends StatelessWidget {
  const OrderAcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(
              flex: 1,
            ),
            SvgPicture.asset(
              AppSVGs.orderAccepted,
            ),
            const SizedBox(
              height: 65,
            ),
            const Text(
              'Your Order has been accepted',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'Your items has been placed and is on it\'s way to be processed',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade600),
            ),
            const Spacer(
              flex: 1,
            ),
            const TrackOrderButton(),
            const SizedBox(
              height: 8,
            ),
            const BackToHomeButton(),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
