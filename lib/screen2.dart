import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/counter_controller.dart';
import 'package:get/get.dart';

class Screen2 extends StatelessWidget {
  var controller = Get.find<ConunterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('GetX Navigations'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SizedBox(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              controller.counter.toString(),
              style: const TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/screen3');
              },
              child: const Text('Go to screen 3'),
            )
          ],
        ),
      ),
    );
  }
}
