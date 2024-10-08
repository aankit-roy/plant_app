import 'package:flutter/material.dart';
import 'package:plant_app/ui/Screens/rootPage.dart';
import 'package:plant_app/ui/Screens/signInScreen.dart';
import 'package:plant_app/ui/Screens/widgets/customeTestfield.dart';
import 'package:page_transition/page_transition.dart';

import '../../AllConstants/textConstants.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset("assets/images/signup.png"),
              const Text(
                "Sign Up",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 38),
              ),
              const SizedBox(
                height: 35,
              ),
              const customeTextField(
                icon: Icons.alternate_email,
                obscureText: false,
                hintText: "Enter username",
              ),
              const customeTextField(
                icon: Icons.person,
                obscureText: false,
                hintText: "Enter fullname",
              ),
              const customeTextField(
                icon: Icons.lock,
                obscureText: true,
                hintText: "Enter Password",
              ),
              const SizedBox(
                height: 18,
              ),
              GestureDetector(
                onTap: ()  {},
                child: Container(
                  width: size.width,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  decoration: BoxDecoration(
                      color: TextConstants.primaryColor,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                    child: Text(
                      "Sing Up",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              const Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text("OR"),
                  ),
                  Expanded(
                    child: Divider(),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: TextConstants.primaryColor),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                      child: Image.asset("assets/images/google.png"),
                    ),
                    Text(
                      "Sign Up with Google ",
                      style: TextStyle(
                          color: TextConstants.blackColor, fontSize: 20),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: SignInScreen(),
                          type: PageTransitionType.bottomToTop));
                },
                child: Center(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: " Have an Account?",
                        style: TextStyle(
                            color: TextConstants.blackColor, fontSize: 18)),
                    TextSpan(
                        text: " Login",
                        style: TextStyle(
                            color: TextConstants.primaryColor, fontSize: 18)),
                  ])),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}