import 'package:flutter/material.dart';

class Favouritepage extends StatefulWidget {
  const Favouritepage({super.key});

  @override
  State<Favouritepage> createState() => _FavouritepageState();
}

class _FavouritepageState extends State<Favouritepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Favourite Page",style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30

        ),
        ),
      ),

    );
  }
}
