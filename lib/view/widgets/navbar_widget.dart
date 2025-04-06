import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: const Color.fromARGB(255, 206, 60, 107),
      height: 70,
      color: Colors.white,
      items: const [
        Icon(
          Icons.home,
          color: Color.fromARGB(255, 206, 60, 107),
        ),
        Icon(
          Icons.search,
          color: Color.fromARGB(255, 206, 60, 107),
        ),
        Icon(
          Icons.favorite,
          color: Color.fromARGB(255, 206, 60, 107),
        ),
      ],
    );
  }
}
