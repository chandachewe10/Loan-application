import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/header.dart';
import '../widgets/personal_details.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    String title = "Personal Details";
    return  const Scaffold(

      appBar: HeaderComponent(headerText: 'Create Account', hint: 'Provide Details to create an Account',),

      body: PersonalDetails(),
    );



  }
}
