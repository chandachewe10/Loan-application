import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:loan_mobile_app/screens/introductory_screens.dart';
import 'package:loan_mobile_app/screens/signup/page.dart';


void main() {
  runApp(const LoanMobileApplication());
}

class LoanMobileApplication extends StatelessWidget {
  const LoanMobileApplication({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroductoryScreens(),

        // Named Routes and Bindings
        getPages: [
          GetPage(
            name: '/signup',
            page: () => SignUp(),
           // binding: SignupDetailsPageBinding(),
          ),
        ]);
  }
}
