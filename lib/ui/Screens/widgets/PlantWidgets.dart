

import 'package:flutter/cupertino.dart';

import '../../../models/Plants.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/AllConstants/textConstants.dart';
import 'package:plant_app/models/Plants.dart';
import 'package:page_transition/page_transition.dart';
import 'package:plant_app/ui/Screens/detailsPage.dart';

class plantWidget extends StatelessWidget {

  final int index;
   final List<Plant> plantList;
  const plantWidget({
    super.key,
    required this.index,
    required this.plantList,

  }) ;



  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                child: DetailsPage(
                  plantId: plantList[index].plantId,
                ),
                type: PageTransitionType.bottomToTop));
      },
      child: Container(
        height: 80,
        padding: const EdgeInsets.only(left: 10, top: 10),
        margin: const EdgeInsets.only(bottom: 10, top: 10),
        width: size.width,
        decoration: BoxDecoration(
          color: TextConstants.primaryColor.withOpacity(.1),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                      color: TextConstants.primaryColor
                          .withOpacity(.8),
                      shape: BoxShape.circle),
                ),
                Positioned(
                  bottom: 5,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    height: 90,
                    child:
                    Image.asset(plantList[index].imageURL),
                  ),
                ),
                Positioned(
                  left: 80,
                  bottom: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        plantList[index].category,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        plantList[index].plantName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: TextConstants.blackColor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                "₹${plantList[index].price}",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: TextConstants.primaryColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}