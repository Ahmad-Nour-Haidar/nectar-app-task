import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../model/cart_item.dart';

part './cart_item_counter.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key,
    required this.cartItem,
  });

  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: SizedBox(
            height: 110,
            child: Row(
              children: [
                Image.asset(
                  cartItem.image,
                  width: 75,
                ),
                const SizedBox(
                  width: 32,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cartItem.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${cartItem.volume}, Price',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    const CartItemCounter()
                  ],
                ),
                const Spacer(
                  flex: 1,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.close,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      '\$${cartItem.price}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Divider(
          color: Colors.grey.shade300,
        )
      ],
    );
  }
}
