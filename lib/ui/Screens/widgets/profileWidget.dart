


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../AllConstants/textConstants.dart';

class ProfileWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const ProfileWidget({
    super.key, required this.icon, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              Icon(
                icon,
                color: TextConstants.blackColor.withOpacity(.5),
                size: 26,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                title,
                style: TextStyle(
                    color: TextConstants.blackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
          Icon(Icons.arrow_forward_ios,color: TextConstants.blackColor.withOpacity(.4),)
        ],
      ),
    );
  }
}