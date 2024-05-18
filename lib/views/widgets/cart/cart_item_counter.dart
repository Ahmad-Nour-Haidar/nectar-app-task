part of './cart_item_card.dart';

class CartItemCounter extends StatefulWidget {
  const CartItemCounter({
    super.key,
  });

  @override
  State<CartItemCounter> createState() => _CartItemCounterState();
}

class _CartItemCounterState extends State<CartItemCounter> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              quantity > 1 ? quantity-- : null;
            });
          },
          icon: const Icon(Icons.remove),
          color: Colors.grey,
          iconSize: 30,
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(
                14,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 18,
        ),
        Text(
          '$quantity',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          width: 18,
        ),
        IconButton(
          onPressed: () {
            setState(() {
              quantity++;
            });
          },
          icon: const Icon(Icons.add),
          color: AppColors.primary,
          iconSize: 30,
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(
                14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
