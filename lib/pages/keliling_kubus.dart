import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:calculator_getx/controller.dart';

class KelilingKubus extends StatefulWidget {
  const KelilingKubus({super.key});

  @override
  State<KelilingKubus> createState() => _KelilingKubusState();
}

class KelilingKubusController extends GetxController {
  // Reactive variable to hold the result
  var hasilKelilingKubus = 0.0.obs;

  // Method to calculate the perimeter of a cube
  void hitungKelilingKubus(double sisi) {
    hasilKelilingKubus.value =
        12 * sisi; // Perimeter of a cube is 12 times the side length
  }
}

class _KelilingKubusState extends State<KelilingKubus> {
  TextEditingController sisiController = TextEditingController();
  final KelilingKubusController controller = Get.put(KelilingKubusController());

  @override
  void dispose() {
    sisiController.dispose();
    super.dispose();
  }

  Widget myTextField(
      TextEditingController ctr, String myLabel, TextInputType inputType) {
    return Container(
        margin: EdgeInsets.all(10),
        child: TextField(
            controller: ctr,
            keyboardType: inputType,
            decoration: InputDecoration(labelText: myLabel)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Keliling Kubus')),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          myTextField(sisiController, 'Sisi', TextInputType.number),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              // Menghitung keliling kubus
              double sisi = double.tryParse(sisiController.text) ?? 0;
              controller.hitungKelilingKubus(sisi);
            },
            child: Text('Hitung'),
          ),
          Obx(() => Text('Hasil: ${controller.hasilKelilingKubus.value}'))
        ]));
  }
}
