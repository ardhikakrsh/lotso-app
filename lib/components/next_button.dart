import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final PageController controller;

  const NextButton({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeIn,
        );
      },
      child: const Text(
        'Next',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
