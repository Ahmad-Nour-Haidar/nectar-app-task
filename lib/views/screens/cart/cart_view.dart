import 'package:flutter/material.dart';

import '../../../core/assets/app_images.dart';
import '../../../entities/cart_item.dart';
import '../../widgets/cart/cart_item_card.dart';
import '../../widgets/cart/checkout_button.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Cart',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 60,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Divider(
            color: Colors.grey.shade300,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                CartItemCard(
                  cartItem: CartItem(
                    'Bell Pepper Red',
                    image: AppImages.bellPepperRed,
                    volume: '1kg',
                    price: 4.99,
                  ),
                ),
                CartItemCard(
                  cartItem: CartItem(
                    'Egg Chicken Red',
                    image: AppImages.eggChickenRed,
                    volume: '4pcs',
                    price: 1.99,
                  ),
                ),
                CartItemCard(
                  cartItem: CartItem(
                    'Organic Bananas',
                    image: AppImages.organicBananas,
                    volume: '12kg',
                    price: 3.00,
                  ),
                ),
                CartItemCard(
                  cartItem: CartItem(
                    'Ginger',
                    image: AppImages.ginger,
                    volume: '250gm',
                    price: 2.99,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: const CheckoutButton(),
    );
  }
}
