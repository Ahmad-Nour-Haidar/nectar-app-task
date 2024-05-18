import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/assets/app_svgs.dart';

class AddButtonSVG extends StatelessWidget {
  const AddButtonSVG({
    super.key,
    required this.onPressed,
    required this.size,
  });
  final void Function() onPressed;
  final double size;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      icon: SvgPicture.asset(AppSVGs.add),
      style: IconButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
