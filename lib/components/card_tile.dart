import 'dart:ui';
import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  const CardTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.only(top: 20),
      crossAxisCount: 2,
      shrinkWrap: true,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      childAspectRatio: 0.8,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        _buildLotsoCard('assets/images/lotso2.jpg'),
        _buildLotsoCard('assets/images/lotso3.jpg'),
        _buildLotsoCard('assets/images/lotso4.jpg'),
        _buildLotsoCard('assets/images/lotso5.jpg'),
        _buildLotsoCard('assets/images/lotso6.jpg'),
        _buildLotsoCard('assets/images/lotso7.jpg'),
        _buildLotsoCard('assets/images/lotso8.jpg'),
        _buildLotsoCard('assets/images/lotso9.jpg'),
      ],
    );
  }

  Widget _buildLotsoCard(String imagePath) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15),
          ),

          // Add padding to the card (optional, adjust as needed
          padding: const EdgeInsets.all(14.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
