

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../AllConstants/textConstants.dart';

class customeTextField extends StatelessWidget {
  final IconData icon;
  final bool obscureText;
  final String hintText;
  const customeTextField({
    super.key, required this.icon, required this.obscureText, required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: TextStyle(
        color: TextConstants.blackColor,


      ),
      decoration: InputDecoration(
          border: InputBorder.none,

          prefixIcon: Icon(icon,color: TextConstants.blackColor.withOpacity(.4),),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 22)


      ),
      cursorColor: TextConstants.blackColor.withOpacity(.6),

    );
  }
}