import 'package:flutter/material.dart';
import 'package:plant_app/AllConstants/textConstants.dart';
import 'package:plant_app/ui/Screens/cartPage.dart';
import 'package:plant_app/ui/Screens/favouritePage.dart';
import 'package:plant_app/ui/Screens/homePage.dart';
import 'package:plant_app/ui/Screens/profilePage.dart';
import 'package:page_transition/page_transition.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:plant_app/ui/Screens/scanPage.dart';

import '../../models/Plants.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  List<Plant> favouritesList=[];
  List<Plant> myCartList=[];

  int bottonNavIndex=0;
  //pages list
  List<Widget> widgetOption (){
    return [
      const HomePage(),
      Favouritepage(favouritedPlants: favouritesList,),
      CartPage(addedToCartPlants: myCartList,),
      const ProfilePage(),
    ];
  }


  //List of pages icons
  List<IconData> iconList= [
     Icons.home,
     Icons.favorite,
     Icons.shopping_cart,
    Icons.person,

  ];
  // list of pages Titles
  List<String> titleList=[
    "Home",
    "Favourite",
    "Cart",
    "Profile"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(titleList[bottonNavIndex],style: TextStyle(
              color: TextConstants.blackColor,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),),
            Icon(Icons.notifications,color: TextConstants.blackColor,
                 size: 30.0,
            )

          ],
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
      ),
      body: IndexedStack(
        index: bottonNavIndex,
        children: widgetOption(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, PageTransition(child: const ScanPage(),
              type: PageTransitionType.bottomToTop));

        },
        backgroundColor: TextConstants.primaryColor,
        child: const Icon(Icons.qr_code_scanner,size: 30 ,color: Colors.white,),
      ) ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        splashColor: TextConstants.primaryColor,
        activeColor: TextConstants.primaryColor,
        inactiveColor: Colors.black.withOpacity(0.5),
        icons: iconList,
        activeIndex: bottonNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.smoothEdge,
        onTap: (index){
          setState(() {
            bottonNavIndex=index;
            final List<Plant> favouratedPlant=Plant.getFavouritedPlants();
            final List<Plant> addedToCartPlants=Plant.addToCartPlants();
            //now updating list;
            favouritesList=favouratedPlant;
            myCartList=addedToCartPlants.toSet().toList();

          });
        },
      ),


    );
  }
}
