import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:calculator_getx/widget/button.dart'; // Pastikan impor ini sesuai dengan struktur proyek Anda

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                borderColor: Colors.transparent,
              ),
              const SizedBox(height: 20),
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
                borderColor: Colors.transparent,
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: "Keliling Balok",
                onPressed: () {
                  Get.toNamed('/kelilingBalok');
                },
                backgroundColor: Colors.black,
                textColor: Colors.white,
                textSize: 16.0,
                buttonType: ButtonType.elevated,
                borderWidth: 0,
                borderColor: Colors.transparent,
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: "Keliling Kubus",
                onPressed: () {
                  Get.toNamed('/kelilingKubus');
                },
                backgroundColor: Colors.black,
                textColor: Colors.white,
                textSize: 16.0,
                buttonType: ButtonType.elevated,
                borderWidth: 0,
                borderColor: Colors.transparent,
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: "Keliling Tabung",
                onPressed: () {
                  Get.toNamed('/kelilingTabung');
                },
                backgroundColor: Colors.black,
                textColor: Colors.white,
                textSize: 16.0,
                buttonType: ButtonType.elevated,
                borderWidth: 0,
                borderColor: Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
