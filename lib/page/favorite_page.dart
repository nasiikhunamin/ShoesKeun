import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Favorite',
          style: TextStyle(
              color: Color(0xff3A3E3E),
              fontWeight: FontWeight.w500,
              fontSize: 20),
        ),
        centerTitle: true,
        elevation: 0.5,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/favorite404.png',
              width: 150,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'No favorites added yet.',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xff3A3E3E),
            ),
          )
        ],
      ),
    );
  }
}
