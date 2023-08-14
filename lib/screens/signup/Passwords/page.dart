import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/header.dart';
import '../../widgets/password_details.dart';


class PasswordDetailsCreation extends GetView<PasswordDetailsCreation> {
  const PasswordDetailsCreation({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(

      appBar: HeaderComponent(headerText: 'Create Password', hint: 'Provide Details to create an Account',),

      body: PasswordAccountDetails(),
    );



  }
}
