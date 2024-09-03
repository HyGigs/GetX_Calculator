import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:calculator_getx/controller.dart';

class KelilingBalok extends StatefulWidget {
  const KelilingBalok({super.key});

  @override
  State<KelilingBalok> createState() => _KelilingBalokState();
}

class _KelilingBalokState extends State<KelilingBalok> {
  TextEditingController panjangController = TextEditingController();
  TextEditingController lebarController = TextEditingController();
  TextEditingController tinggiController = TextEditingController();
  final Controller controller = Get.put(Controller());

  Widget myTextField(
      TextEditingController ctr, String myLabel, TextInputType keyboardType) {
    return Container(
        margin: EdgeInsets.all(10),
        child: TextField(
            controller: ctr,
            keyboardType: keyboardType,
            decoration: InputDecoration(labelText: myLabel)));
  }

  void hitungKeliling() {
    try {
      double panjang = double.parse(panjangController.text);
      double lebar = double.parse(lebarController.text);
      controller.kelilingPersegiPanjang(panjang, lebar);
    } catch (e) {
      Get.snackbar("Error", "Input tidak valid");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Keliling Balok')),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          myTextField(panjangController, 'Panjang', TextInputType.number),
          myTextField(lebarController, 'Lebar', TextInputType.number),
          myTextField(lebarController, 'Tinggi', TextInputType.number),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: hitungKeliling,
            child: Text('Hitung'),
          ),
          Obx(() =>
              Text('Hasil : ${controller.hasilKelilingPersegiPanjang.value}'))
        ]));
  }
}
