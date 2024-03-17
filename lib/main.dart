import 'package:flutter/material.dart';
import 'package:plant_app/ui/Screens/onBoradingScreen.dart';

void main() {
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "OnBoarding Screen",
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),

    );
  }
}

