import 'package:flutter/material.dart';

class PreviousButton extends StatelessWidget {
  final PageController controller;

  const PreviousButton({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.previousPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeIn,
        );
      },
      child: const Text(
        'Back',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
