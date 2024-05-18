import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

class TrackOrderButton extends StatelessWidget {
  const TrackOrderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            18,
          ),
        ),
        minimumSize: const Size(double.infinity, 70),
      ),
      child: const Text(
        'Track Order',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
