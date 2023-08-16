import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loan_mobile_app/constants/colors.dart';

class DashboardCard extends StatelessWidget {
  final IconData icon;
  final String title;

  DashboardCard({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return
      Column(
      children: [
        SizedBox(
        width: 60,
        height: 60,
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: const ShapeDecoration(
              color: primaryColor400,
              shape: OvalBorder(),
            ),
            child: Center(
                child: Icon(icon,
                color: Colors.white,)
            ),
          ),
        ),
      ),

    const SizedBox(
    height: 7,
    ),
    // * TITLE
    Text(
    title,
    textAlign: TextAlign.center,
    style: const TextStyle(
    color: primaryColor400,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    ),
    ),
    const SizedBox(
    height: 7,
    ),

    ],
      );


  }
}
