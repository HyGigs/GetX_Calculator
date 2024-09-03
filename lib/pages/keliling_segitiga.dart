import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:calculator_getx/controller.dart';
import 'package:calculator_getx/widget/button.dart';
import 'package:calculator_getx/widget/text_field.dart';
import 'dart:math';

class KelilingSegitiga extends StatefulWidget {
  @override
  _KelilingSegitigaState createState() => _KelilingSegitigaState();
}

class _KelilingSegitigaState extends State<KelilingSegitiga> {
  TextEditingController ctrAlas = TextEditingController();
  TextEditingController ctrTinggi = TextEditingController();
  final Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Menghitung Keliling Segitiga',
            style: TextStyle(fontSize: 30),
          ),
          CustomTextField(
            controller: ctrAlas,
            labelText: "Alas",
            keyboardType: TextInputType.number,
            obscureText: false,
            fontSize: 16.0,
            textColor: Colors.black,
            labelTextColor: Colors.black,
            borderColor: Colors.black,
            focusedBorderColor: Colors.blueAccent,
            enabledBorderColor: Colors.blueAccent,
          ),
          SizedBox(height: 10),
          CustomTextField(
            controller: ctrTinggi,
            labelText: "Tinggi",
            keyboardType: TextInputType.number,
            obscureText: false,
            fontSize: 16.0,
            textColor: Colors.black,
            labelTextColor: Colors.black,
            borderColor: Colors.black,
            focusedBorderColor: Colors.blueAccent,
            enabledBorderColor: Colors.blueAccent,
          ),
          SizedBox(height: 10),
          CustomButton(
            text: "Hitung",
            onPressed: () => controller.KelilingSegitiga(
              double.parse(ctrAlas.text),
              double.parse(ctrTinggi.text),
            ),
            backgroundColor: Colors.blueAccent,
            textColor: Colors.white,
            textSize: 16.0,
            buttonType: ButtonType.elevated,
            borderWidth: 0,
            borderColor: Colors.transparent,
          ),
          SizedBox(height: 10),
          Obx(() => Text(
            'Hasil: ${controller.hasilKelilingSegitiga.value}',
            style: TextStyle(fontSize: 20),
          )),
        ],
      ),
    );
  }
}
