import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:calculator_getx/controller.dart';
import 'package:calculator_getx/widget/button.dart';
import 'package:calculator_getx/widget/text_field.dart';

class KelilingTabung extends StatefulWidget {
  @override
  _KelilingTabungState createState() => _KelilingTabungState();
}

class KelilingTabungController extends GetxController {
  var hasilKelilingTabung = 0.0.obs;

  void hitungKelilingTabung(double jariJari, double tinggi) {
    double keliling = 2 * 3.14 * jariJari * (jariJari + tinggi);
    hasilKelilingTabung.value = keliling;
  }
}

class _KelilingTabungState extends State<KelilingTabung> {
  TextEditingController ctrJariJari = TextEditingController();
  TextEditingController ctrTinggi = TextEditingController();
  final KelilingTabungController controller =
      Get.put(KelilingTabungController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menghitung Keliling Tabung'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(
              controller: ctrJariJari,
              labelText: "Jari-Jari",
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
              onPressed: () {
                double jariJari = double.tryParse(ctrJariJari.text) ?? 0;
                double tinggi = double.tryParse(ctrTinggi.text) ?? 0;
                controller.hitungKelilingTabung(jariJari, tinggi);
              },
              backgroundColor: Colors.blueAccent,
              textColor: Colors.white,
              textSize: 16.0,
              buttonType: ButtonType.elevated,
              borderWidth: 0,
              borderColor: Colors.transparent,
            ),
            SizedBox(height: 10),
            Obx(() => Text(
                  'Hasil Keliling Tabung: ${controller.hasilKelilingTabung.value}',
                  style: TextStyle(fontSize: 18),
                )),
          ],
        ),
      ),
    );
  }
}
