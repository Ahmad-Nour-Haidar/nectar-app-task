import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';

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
            color: AppColors.grey,
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
              color: AppColors.fontColor,
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
