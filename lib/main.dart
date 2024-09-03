import 'package:flutter/material.dart';
import 'package:calculator_getx/pages/home.dart';
import 'package:get/get.dart';
import 'package:calculator_getx/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.home,
      getPages: AppRoutes.routes,
    );
  }
}