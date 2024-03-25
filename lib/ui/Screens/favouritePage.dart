import 'package:flutter/material.dart';
import 'package:plant_app/AllConstants/textConstants.dart';
import 'package:plant_app/ui/Screens/widgets/PlantWidgets.dart';

import '../../models/Plants.dart';

class Favouritepage extends StatefulWidget {
  final List<Plant> favouritedPlants;
  const Favouritepage({super.key, required this.favouritedPlants});

  @override
  State<Favouritepage> createState() => _FavouritepageState();
}

class _FavouritepageState extends State<Favouritepage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: widget.favouritedPlants.isEmpty
            ? Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.favorite_border,
                      size: 100,
                      color: TextConstants.primaryColor.withOpacity(.3),
                    ),
                    Text(
                      "Sorry !! No Plants",
                      style: TextStyle(
                          color: TextConstants.primaryColor,
                          fontWeight: FontWeight.w300,
                          fontSize: 22),
                    )
                  ],
                ),
              )
            : Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 30),
                height: size.height ,
                child: ListView.builder(
                  itemCount: widget.favouritedPlants.length,
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return plantWidget(
                        index: index, plantList: widget.favouritedPlants);
                  },
                ),
              )
    );
  }
}
