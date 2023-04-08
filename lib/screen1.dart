import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/counter_controller.dart';
import 'package:get/get.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<ConunterController>().increment();
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('GetX Navigations'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SizedBox(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<ConunterController>(
              id: '1',
              builder: (value) {
                print('build 1');
                return Text(
                  value.counter.toString(),
                  style: const TextStyle(fontSize: 30),
                );
              },
            ),
            GetBuilder<ConunterController>(
              id: '2',
              builder: (value) {
                print('build 2');

                return Text(
                  value.counter.toString(),
                  style: const TextStyle(fontSize: 30),
                );
              },
            ),

            //// osx
            // Obx(
            //   () {
            //     return Text(
            //       controller.counter.value.toString(),
            //       style: const TextStyle(
            //         fontSize: 30,
            //       ),
            //     );
            //   },
            // ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/screen2');
              },
              child: const Text('Go to screen 2'),
            )
          ],
        ),
      ),
    );
  }
}
