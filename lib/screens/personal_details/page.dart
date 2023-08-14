import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/header.dart';
import '../widgets/personal_details.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(

      appBar: HeaderComponent(headerText: 'Create Account', hint: 'Provide Details to create an Account',),

      body: NameDetails(),
    );



  }
}
