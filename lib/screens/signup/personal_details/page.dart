import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../components/header.dart';
import '../../widgets/personal_details.dart';
import 'controller.dart';


class PersonalDetails extends GetView<PersonalDetailsController> {
  const PersonalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(

      appBar: HeaderComponent(headerText: 'Create Account', hint: 'Provide Details to create an Account',),

      body: NameDetails(),
    );



  }
}
