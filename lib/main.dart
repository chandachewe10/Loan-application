import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:loan_mobile_app/screens/introductory_screens.dart';

void main() {
  runApp(const LoanMobileApplication());
}

class LoanMobileApplication extends StatelessWidget {
  const LoanMobileApplication({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroductoryScreens(),
    );
  }
}
