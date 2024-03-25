import 'package:flutter/material.dart';

import '../../AllConstants/textConstants.dart';
import '../../models/Plants.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Plant> _PlantList = Plant.plantList;//
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 20,
            right: 20,
            top: 60,
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
                          onPressed: (){},
                          icon: Icon(
                            Icons.share,
                            color: TextConstants.primaryColor,
                          ),
                        )
                    ),
                  ),
                ],
          ),
          ),
          Positioned(
            left: 20,
            right: 20,
            top: 100,
            child: Container(
              width: size.width * .8,
              height: size.height * .8,
              padding: EdgeInsets.all(20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.qr_code_scanner,color: TextConstants.primaryColor,
                    size: 150,
                    ),
                    SizedBox(height: 20,),
                    Text("Tap to Scan",style: TextStyle(
                      color: TextConstants.primaryColor.withOpacity(.8),
                      fontWeight: FontWeight.w500,
                      fontSize: 25
                    ),)
                  ],
                ),

              ),
            ),

          )
        ],

      ),

    );
  }
}
