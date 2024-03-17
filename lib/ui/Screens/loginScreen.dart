import 'package:flutter/material.dart';
import 'package:plant_app/AllConstants/textConstants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Login Screen")),
        backgroundColor: TextConstants.primaryColor,
      ),


    );
  }
}
