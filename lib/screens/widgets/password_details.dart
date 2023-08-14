import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../components/input_form.dart';

class PasswordAccountDetails extends StatelessWidget {
  const PasswordAccountDetails({super.key});

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
                prefixIcon: Icons.lock,
                labelText: "Enter Password",
                isPassword: true,
                textInputType: TextInputType.visiblePassword)),
        Container(
            margin: const EdgeInsets.all(15),
            child: const InputForm(
                prefixIcon: Icons.lock,
                labelText: "Confirm Password",
                isPassword: true,
                textInputType: TextInputType.visiblePassword)),
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
                Get.toNamed('/password');
              },
              child: const Text('Create Account')),
        )
      ],
    );
  }
}
