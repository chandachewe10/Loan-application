import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardDashboard extends StatelessWidget {
  final String title;
  final String hint;
  final IconData cardLogo;
  final String bottomText;

  const CardDashboard(
      {super.key,
      required this.title,
      required this.hint,
      required this.cardLogo,
      required this.bottomText});

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.all(10.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontSize: 16),
                  ),
                  Icon(cardLogo),
                ],
              ),
              Text(
                hint,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                bottomText,
                style: const TextStyle(fontSize: 10),
              )
            ],
          ),
        ),
      ),
    );
  }
}
