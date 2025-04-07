import 'package:flutter/material.dart';
import 'package:lotso_app/view/pages/home_page.dart';

class DoneButton extends StatelessWidget {
  const DoneButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      },
      child: const Text(
        'Done',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
