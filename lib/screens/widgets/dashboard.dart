import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loan_mobile_app/constants/colors.dart';

class DashboardCard extends StatelessWidget {
  final String image;
  final String title;

  DashboardCard({required this.image, required this.title});

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
              color: primaryColor500,
              shape: OvalBorder(),
            ),
            child: Center(
                child: Image.asset(image)
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
    color: kPrimaryColor,
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
