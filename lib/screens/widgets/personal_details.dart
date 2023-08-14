import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../components/input_form.dart';

class NameDetails extends StatelessWidget {
  const NameDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 10,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
            margin: const EdgeInsets.all(15),
            child: const InputForm(
                prefixIcon: Icons.account_circle_outlined,
                labelText: "Enter First Name",
                textInputType: TextInputType.text)),
        Container(
            margin: const EdgeInsets.all(15),
            child: const InputForm(
                prefixIcon: Icons.account_circle,
                labelText: "Enter Last Name",
                textInputType: TextInputType.text)),
        Container(
            margin: const EdgeInsets.all(15),
            child: const InputForm(
                prefixIcon: Icons.email,
                labelText: "Enter Email",
                textInputType: TextInputType.emailAddress)),
        Container(
            margin: const EdgeInsets.all(15),
            child: const InputForm(
              prefixIcon: Icons.phone_android_sharp,
              labelText: "Enter Phone Number",
              textInputType: TextInputType.number,
            )),
        Container(
          margin: const EdgeInsets.all(15),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  elevation: 8,
                  minimumSize: const Size(200, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16))),
              onPressed: () {
                Get.toNamed('/otp');
              },
              child: const Text('Next')),
        )
      ],
    );
  }
}
