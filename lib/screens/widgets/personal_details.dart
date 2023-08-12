import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(


      child: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),

          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.all(15),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.account_circle_outlined),
               labelText: "Enter First Name",
                border: OutlineInputBorder(),
              ),
            ),
          )
        ],
      ),
    );
  }
}

