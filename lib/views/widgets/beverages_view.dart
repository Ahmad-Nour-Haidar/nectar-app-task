import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/assets/app_images.dart';
import '../../entities/beverage_entity.dart';
import 'add_button.dart';
import 'find_product/beverage_card.dart';
part '../widgets/find_product/beverage_app_bar.dart';
class BeveragesView extends StatelessWidget {
  const BeveragesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _BeverageAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 7 / 10,
          ),
          children: [
            BeverageCard(
              beverage: BeverageEntity(
                image: AppImages.coke,
                name: 'Deit Coke',
                volume: '355ml',
                price: 1.99,
              ),
            ),
            BeverageCard(
              beverage: BeverageEntity(
                image: AppImages.sprite,
                name: 'Sprite Can',
                volume: '325ml',
                price: 1.50,
              ),
            ),
            BeverageCard(
              beverage: BeverageEntity(
                image: AppImages.apple,
                name: 'Apple & Grape Juice',
                volume: '2L',
                price: 5.99,
              ),
            ),
            BeverageCard(
              beverage: BeverageEntity(
                image: AppImages.orange,
                name: 'Orange Juice',
                volume: '2L',
                price: 8.99,
              ),
            ),
            BeverageCard(
              beverage: BeverageEntity(
                image: AppImages.coca,
                name: 'Coca Cola Can',
                volume: '325ml',
                price: 4.99,
              ),
            ),
            BeverageCard(
              beverage: BeverageEntity(
                image: AppImages.pepsi,
                name: 'Pepsi Can',
                volume: '330ml',
                price: 4.99,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
