import 'package:flutter/material.dart';
import 'package:task/views/widgets/custom_button.dart';

import '../widgets/checkout_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CustomButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return const CheckoutWidget();
                    });
              },
              child: const Text('show'),
            ),
          )
        ],
      ),
    );
  }
}
