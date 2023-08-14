import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:loan_mobile_app/constants/colors.dart';

import '../components/input_form.dart';

class SigninAccountDetails extends StatelessWidget {
  const SigninAccountDetails({super.key});

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
                prefixIcon: Icons.phone,
                labelText: "Enter Phone number",
                isPassword: false,
                textInputType: TextInputType.visiblePassword)),
        Container(
            margin: const EdgeInsets.all(15),
            child: const InputForm(
                prefixIcon: Icons.lock,
                labelText: "Enter Password",
                isPassword: true,
                textInputType: TextInputType.visiblePassword)),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Forgot password?',style: TextStyle(color:primaryColor800),),
            Text('Already Registered?',style: TextStyle(color:primaryColor800),),
          ],
        ),


        Container(
          margin: const EdgeInsets.all(25),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  elevation: 8,
                  minimumSize: const Size(200, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16))),
              onPressed: () {
                Get.toNamed('/dashboard');
              },
              child: const Text('Sign In')),
        )
      ],
    );
  }
}
