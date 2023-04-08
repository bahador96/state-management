import 'package:flutter_application_1/controllers/counter_controller.dart';
import 'package:get/get.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    // Get.put(ConunterController(),permanent: true);
    Get.lazyPut(() => ConunterController());
  }
}
