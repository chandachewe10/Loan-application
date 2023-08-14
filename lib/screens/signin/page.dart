import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/header.dart';
import '../widgets/password_details.dart';
import '../widgets/personal_details.dart';
import '../widgets/signin_details.dart';

class SigninDetailsCreation extends GetView<SigninDetailsCreation> {
  const SigninDetailsCreation({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(

      appBar: HeaderComponent(headerText: 'Sign In', hint: 'Enter your Credentials',),

      body: SigninAccountDetails(),
    );



  }
}
