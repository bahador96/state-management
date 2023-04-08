import 'package:get/get.dart';

class ConunterController extends GetxController {
  int counter = 0;
  int counter2 = 0;
  void increment() {
    counter++;
    update(['2']);
  }

//   var counter = 0.obs;
//   void increment() {
//     counter.value++;
//   }
}
