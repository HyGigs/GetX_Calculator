import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:calculator_getx/controller.dart';
import 'package:calculator_getx/widget/button.dart';
import 'package:calculator_getx/widget/text_field.dart';

class KelilingPersegiPanjang extends StatefulWidget {
  @override
  _KelilingPersegiPanjangState createState() => _KelilingPersegiPanjangState();
}

class _KelilingPersegiPanjangState extends State<KelilingPersegiPanjang> {
  TextEditingController panjangController = TextEditingController();
  TextEditingController lebarController = TextEditingController();
  final Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Menghitung Keliling Persegi Panjang',
            style: TextStyle(fontSize: 30),
          ),
          CustomTextField(
            controller: panjangController,
            labelText: "Panjang",
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
            controller: lebarController,
            labelText: "Lebar",
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
            onPressed: () => controller.kelilingPersegiPanjang(
              double.parse(panjangController.text),
              double.parse(lebarController.text),
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
              'Hasil: ${controller.hasilKelilingPersegiPanjang.value}',
              style: TextStyle(fontSize: 20),
          )),
        ],
      ),
    );
  }
}
