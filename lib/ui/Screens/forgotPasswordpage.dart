

import 'package:flutter/material.dart';
import 'package:plant_app/ui/Screens/rootPage.dart';
import 'package:plant_app/ui/Screens/signInScreen.dart';
import 'package:plant_app/ui/Screens/widgets/customeTestfield.dart';
import 'package:page_transition/page_transition.dart';

import '../../AllConstants/textConstants.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
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
              Image.asset("assets/images/forgot_password.png"),
              const Text(
                "Forgot\nPassword",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 38),
              ),
              const SizedBox(
                height: 35,
              ),
              const customeTextField(
                icon: Icons.alternate_email,
                obscureText: false,
                hintText: "Enter Email",
              ),


              const SizedBox(
                height: 18,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: RootPage(),
                          type: PageTransitionType.bottomToTop));
                },
                child: Container(
                  width: size.width,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  decoration: BoxDecoration(
                      color: TextConstants.primaryColor,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                    child: Text(
                      "Reset Password",
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