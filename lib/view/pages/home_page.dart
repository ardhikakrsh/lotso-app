import 'package:lotsoApp/components/card_tile.dart';
import 'package:lotsoApp/components/explore_banner.dart';
import 'package:lotsoApp/components/my_drawer.dart';
import 'package:lotsoApp/components/search.dart';
import 'package:lotsoApp/view/pages/cart_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '52 Toys Lotso',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.white, // Change the color of the icons
        ),
        backgroundColor: const Color.fromARGB(255, 206, 60, 107),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartPage(),
                ),
              );
            },
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/wallpaper1.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Search(),
                  SizedBox(height: 20),
                  ExploreBanner(),
                  CardTile(),
                ],
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: NavbarWidget(),
    );
  }
}
