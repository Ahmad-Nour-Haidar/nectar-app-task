import 'package:flutter/material.dart';
import 'package:task/views/widgets/checkout_widget.dart';
import 'package:task/views/widgets/custom_button.dart';

import '../widgets/add_item_widget.dart';

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
                    isScrollControlled: true,
                    useSafeArea: true,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                        ),
                        child: const CheckoutWidget(),
                      );
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
