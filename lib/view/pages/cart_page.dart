import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cart',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 206, 60, 107),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_cart,
              size: 100,
              color: Color.fromARGB(255, 206, 60, 107),
            ),
            SizedBox(height: 20),
            Text(
              'Your cart is empty',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
