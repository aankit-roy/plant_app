import 'package:flutter/material.dart';
import 'package:plant_app/AllConstants/textConstants.dart';
import 'package:plant_app/models/Plants.dart';

class DetailsPage extends StatefulWidget {
  final int plantId;
  const DetailsPage({super.key, required this.plantId});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  //toggle Favourite button
  bool toggleIsfavourited(bool isFavourited) {
    return !isFavourited;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Plant> _PlantList = Plant.plantList;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 60,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: TextConstants.primaryColor.withOpacity(.15),
                    ),
                    child: Icon(
                      Icons.close,
                      color: TextConstants.primaryColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: TextConstants.primaryColor.withOpacity(.15),
                    ),
                    child:
                      IconButton(
                        onPressed: (){
                         setState(() {
                           bool isFav=toggleIsfavourited(_PlantList[widget.plantId].isFavourited);
                           _PlantList[widget.plantId].isFavourited=isFav;
                         });

                        },
                        icon: Icon(
                          _PlantList[widget.plantId].isFavourited == true
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: TextConstants.primaryColor,
                        ),
                      )
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 100,
            left: 10,
            right: 20,
            child: Container(
              width: size.width * .8,
              height: size.height * .8,
              padding: const EdgeInsets.all(20),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 20,
                    left: 0,
                    child: SizedBox(
                      height: 350,
                      child: Image.asset(_PlantList[widget.plantId].imageURL),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 0,
                    child: SizedBox(
                      height: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          plantFeatures(
                            title: "Size",
                            plant_features: _PlantList[widget.plantId].size,
                          ),
                          plantFeatures(
                            title: "Humidity",
                            plant_features:
                                _PlantList[widget.plantId].humidity.toString(),
                          ),
                          plantFeatures(
                            title: "Temperature",
                            plant_features:
                                _PlantList[widget.plantId].temperature,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 90, left: 30, right: 30),
              height: size.height * .5,
              width: size.width,
              decoration: BoxDecoration(
                  color: TextConstants.primaryColor.withOpacity(.4),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            _PlantList[widget.plantId].plantName,
                            style: TextStyle(
                                color: TextConstants.primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 35),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "₹${_PlantList[widget.plantId].price}",
                            style: TextStyle(
                              color: TextConstants.blackColor,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            _PlantList[widget.plantId].rating.toString(),
                            style: TextStyle(
                              fontSize: 35,
                              color: TextConstants.primaryColor,
                            ),
                          ),
                          Icon(
                            Icons.star,
                            size: 35,
                            color: TextConstants.primaryColor,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Expanded(
                    child: Text(
                      _PlantList[widget.plantId].description,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: 24,
                          height: 1.7,
                          color: TextConstants.blackColor.withOpacity(.7)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: size.width * .9,
        height: 55,
        child: Row(
          children: <Widget>[
            Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                  color: TextConstants.primaryColor.withOpacity(.5),
                  borderRadius: BorderRadius.circular(55),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 1),
                        blurRadius: 7,
                        color: TextConstants.primaryColor.withOpacity(.3))
                  ]),
              child: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: TextConstants.primaryColor,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 1),
                      blurRadius: 7,
                      color: TextConstants.primaryColor.withOpacity(.3),
                    )
                  ]),
              child: Center(
                child: Text(
                  "BUY NOW",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class plantFeatures extends StatelessWidget {
  final String plant_features;
  final String title;
  const plantFeatures({
    super.key,
    required this.plant_features,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
              color: TextConstants.blackColor, fontWeight: FontWeight.w500),
        ),
        Text(
          plant_features,
          style: TextStyle(
            color: TextConstants.primaryColor,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        // SizedBox(
        //   height: 10,
        // ),
      ],
    );
  }
}
