import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/header.dart';
import '../widgets/pinput.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(

      appBar: HeaderComponent(headerText: 'Verify Phone Number', hint: 'Please enter the 4 OTP Code that has been sent to your phone number',),

      body: PinPut(),
    );



  }
}
