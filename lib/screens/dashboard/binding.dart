
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:loan_mobile_app/screens/widgets/personal_details.dart';

import 'controller.dart';

class DashboardDetailsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<DashboardDetailsController>(DashboardDetailsController());

  }
}
