import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../entities/beverage_entity.dart';

part 'volume_text.dart';
part 'add_icon_button.dart';

class BeverageCard extends StatelessWidget {
  const BeverageCard({
    super.key,
    required this.beverage,
  });
  final BeverageEntity beverage;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 250,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                beverage.image,
                height: 90,
              ),
            ],
          ),
          const Spacer(
            flex: 3,
          ),
          Text(
            beverage.name,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const Spacer(
            flex: 1,
          ),
          _VolumeText(volume: beverage.volume),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${beverage.price}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              _AddIconButton(
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
