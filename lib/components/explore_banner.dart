import 'package:flutter/material.dart';

class ExploreBanner extends StatelessWidget {
  const ExploreBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: SizedBox(
            width: double.infinity,
            height: 200,
            child: Image.asset(
              'assets/images/lotso1.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 30,
          left: 15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Find your favorite\nlotso here',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  height: 1,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Explore',
                    style: TextStyle(
                      color: Color.fromARGB(255, 206, 60, 107),
                    )),
              ),
            ],
          ),
        )
      ],
    );
  }
}
