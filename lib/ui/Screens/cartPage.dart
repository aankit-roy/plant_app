import 'package:flutter/material.dart';

import '../../models/Plants.dart';

class CartPage extends StatefulWidget {
  final List<Plant> addedToCartPlants;
  const CartPage({super.key, required this.addedToCartPlants});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Cart Page",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30

        ),
        ),
      ),
    );
  }
}
