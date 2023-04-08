import 'package:flutter/material.dart';
import 'package:flutter_application_1/bindings/bindings.dart';
import 'package:flutter_application_1/screen1.dart';
import 'package:flutter_application_1/screen2.dart';
import 'package:flutter_application_1/screen3.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: MyBindings(),
      getPages: [
        GetPage(name: '/screen1', page: () => Screen1()),
        GetPage(name: '/screen2', page: () => Screen2()),
        GetPage(name: '/screen3', page: () => Screen3()),
      ],
      initialRoute: '/screen1',
    );
  }
}
