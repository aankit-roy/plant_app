import 'package:flutter/material.dart';
import 'package:plant_app/ui/Screens/widgets/PlantWidgets.dart';

import '../../AllConstants/textConstants.dart';
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
    Size size = MediaQuery.of(context).size;
    int Totals=0;
    return Scaffold(
        body: widget.addedToCartPlants.isEmpty
            ? Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.add_shopping_cart,
                      size: 100,
                      color: TextConstants.primaryColor.withOpacity(.3),
                    ),
                    Text(
                      "Your Cart is Empty",
                      style: TextStyle(
                          color: TextConstants.primaryColor,
                          fontWeight: FontWeight.w300,
                          fontSize: 22),
                    )
                  ],
                ),
              )
            : Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
                height: size.height ,
                child: Column(
                  children:<Widget> [
                    Expanded(

                      child: ListView.builder(
                        itemCount: widget.addedToCartPlants.length,
                        scrollDirection: Axis.vertical,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return plantWidget(
                              index: index, plantList: widget.addedToCartPlants);
                        },
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        const Divider(thickness: 1.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const Text("Totals", style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w500,

                            ),
                            ),
                            Text("₹${100}",style: TextStyle(
                              fontSize: 27,
                              color: TextConstants.primaryColor,
                              fontWeight: FontWeight.bold,


                            ),)
                          ],

                        ),

                      ],

                    )
                  ],
                ),
              ));
  }
}
