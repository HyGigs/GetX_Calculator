import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:calculator_getx/pages/keliling_segitiga.dart';
import 'package:calculator_getx/route.dart';
import 'package:calculator_getx/widget/button.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  SafeArea(
          child: Center(
              child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomButton(
                    text: "Keliling Segitiga",
                    onPressed: () {
                      Get.toNamed('/kelilingSegitiga');
                    },
                    backgroundColor: Colors.black,
                    textColor: Colors.white,
                    textSize: 16.0,
                    buttonType: ButtonType.elevated,
                    borderWidth: 0,
                    borderColor: Colors.transparent),
                const SizedBox(height: 20),
                CustomButton(
                    text: "Keliling Persegi Panjang",
                    onPressed: () {
                      Get.toNamed('/kelilingPersegiPanjang');
                    },
                    backgroundColor: Colors.black,
                    textColor: Colors.white,
                    textSize: 16.0,
                    buttonType: ButtonType.elevated,
                    borderWidth: 0,
                    borderColor: Colors.transparent),
              ])),
        ));
  }
}
