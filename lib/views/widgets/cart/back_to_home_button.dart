import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BackToHomeButton extends StatelessWidget {
  const BackToHomeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        GoRouter.of(context).pop();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        surfaceTintColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            18,
          ),
        ),
        minimumSize: const Size(double.infinity, 70),
      ),
      child: const Text(
        'Back To home',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
    );
  }
}
