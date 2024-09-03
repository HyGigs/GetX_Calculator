import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:calculator_getx/controller.dart';
import 'package:calculator_getx/widget/button.dart';
import 'package:calculator_getx/widget/text_field.dart';

class KelilingPersegi extends StatefulWidget {
  @override
  _KelilingPersegiState createState() => _KelilingPersegiState();
}

class _KelilingPersegiState extends State<KelilingPersegi> {
  TextEditingController ctrSisi = TextEditingController();
  final Controller controller = Get.put(Controller());
  String ada = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Text('Menghitung keliling Persegi', style: TextStyle(fontSize: 30)),
            CustomTextField(
                controller: ctrSisi,
                labelText: "sisi",
                keyboardType: TextInputType.number,
                obscureText: false,
                fontSize: 16.0,
                textColor: Colors.black,
                labelTextColor: Colors.black,
                borderColor: Colors.black,
                focusedBorderColor: Colors.blueAccent,
                enabledBorderColor: Colors.blueAccent),
            SizedBox(
              height: 10,
            ),
            CustomButton(
                text: "Hitung",
                onPressed: () => controller.kelilingPersegi(
                   double.parse(ctrSisi.text)),
                backgroundColor: Colors.blueAccent,
                textColor: Colors.white,
                textSize: 16.0,
                buttonType: ButtonType.elevated,
                borderWidth: 0,
                borderColor: Colors.transparent),
            SizedBox(
              height: 10,
            ),
            Obx( () => Text('${controller.hasilKelilingPersegi.value}'))
          ],
        ));
  }
}
