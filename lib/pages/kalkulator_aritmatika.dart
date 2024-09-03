import 'package:calculator_getx/controller.dart';
import 'package:calculator_getx/widget/button.dart';
import 'package:calculator_getx/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KalkulatorAritmatika extends StatefulWidget {
  const KalkulatorAritmatika({super.key});

  @override
  State<KalkulatorAritmatika> createState() => _KalkulatorAritmatikaState();
}

class _KalkulatorAritmatikaState extends State<KalkulatorAritmatika> {
  TextEditingController ctrAngka1 = TextEditingController();
  TextEditingController ctrAngka2 = TextEditingController();
  final Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField(
              controller: ctrAngka1,
              labelText: 'Angka 1',
              keyboardType: TextInputType.number,
              obscureText: false,
              fontSize: 16.00,
              textColor: Colors.black,
              labelTextColor: Colors.black,
              borderColor: Colors.black,
              focusedBorderColor: Colors.blue,
              enabledBorderColor: Colors.blue),
              SizedBox(height: 10,),
          CustomTextField(
              controller: ctrAngka2,
              labelText: 'Angka 2',
              keyboardType: TextInputType.number,
              obscureText: false,
              fontSize: 16.00,
              textColor: Colors.black,
              labelTextColor: Colors.black,
              borderColor: Colors.black,
              focusedBorderColor: Colors.blue,
              enabledBorderColor: Colors.blue),
              SizedBox(height: 10,),
          CustomButton(
              text: 'Penjumlahan',
              onPressed: () => controller.rumusAritmatika(
              double.parse(ctrAngka1.text),
              double.parse(ctrAngka2.text),
            ),
              backgroundColor: Colors.black,
              textColor: Colors.white,
              textSize: 16.0,
              buttonType: ButtonType.elevated,
              borderWidth: 0,
              borderColor: Colors.transparent),
              SizedBox(height: 10,),
          // CustomButton(
          //     text: 'Penjumlahan',
          //     onPressed: () => controller.rumusAritmatika(
          //     double.parse(ctrAngka1.text),
          //     double.parse(ctrAngka2.text),
          //   ),
          //     backgroundColor: Colors.black,
          //     textColor: Colors.white,
          //     textSize: 16.0,
          //     buttonType: ButtonType.elevated,
          //     borderWidth: 0,
          //     borderColor: Colors.transparent),
          //     SizedBox(height: 10,),
          // CustomButton(
          //     text: 'Penjumlahan',
          //     onPressed: () => controller.rumusAritmatika(
          //     double.parse(ctrAngka1.text),
          //     double.parse(ctrAngka2.text),
          //   ),
          //     backgroundColor: Colors.black,
          //     textColor: Colors.white,
          //     textSize: 16.0,
          //     buttonType: ButtonType.elevated,
          //     borderWidth: 0,
          //     borderColor: Colors.transparent),
              Obx(() => Text('hasil Modulus : ${controller.hasilModulus.value}')),
              Obx(() => Text('hasil Pembagian : ${controller.hasilPembagian.value}')),
              Obx(() => Text('hasil Perkalian : ${controller.hasilPerkalian.value}')),
              Obx(() => Text('hasil Pengurangan : ${controller.hasilPengurangan.value}')),
              Obx(() => Text('hasil Penjumlahan : ${controller.hasilPertambahan.value}')),
        ],
      ))),
    );
  }
}
