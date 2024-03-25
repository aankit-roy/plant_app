import 'package:flutter/material.dart';
import 'package:plant_app/AllConstants/textConstants.dart';
import 'package:plant_app/ui/Screens/widgets/profileWidget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        height: size.height,
        width: size.width,
        child: Column(
          children: <Widget>[
            Container(
              width: 150,
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.transparent,
                backgroundImage: ExactAssetImage("assets/images/swami.jpg"),
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: TextConstants.primaryColor.withOpacity(.5),
                      width: 4)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Swami Vivekananda",
                    style: TextStyle(
                        color: TextConstants.blackColor, fontSize: 25),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Icon(
                    Icons.verified,
                    color: TextConstants.primaryColor,
                  )
                ],
              ),
            ),
            Text(
              "swamivevekananda@gmail.com",
              style: TextStyle(
                  color: TextConstants.blackColor.withOpacity(.4),
                  fontSize: 16),
            ),
            SizedBox(
              height: 45,
            ),
            SizedBox(
              height: size.height * .7,
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ProfileWidget(icon: Icons.person,title: "My Profile",),
                  ProfileWidget(icon: Icons.settings,title: "Settings",),
                  ProfileWidget(icon: Icons.notifications,title: "Notifications",),
                  ProfileWidget(icon: Icons.chat,title: "FAQs",),
                  ProfileWidget(icon: Icons.share,title: "Share",),
                  ProfileWidget(icon: Icons.logout,title: "LogOut",),

                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}


