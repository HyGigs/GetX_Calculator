import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:calculator_getx/route.dart';
import 'package:calculator_getx/controller.dart';


class KelilingPersegiPanjang extends StatefulWidget {
  const KelilingPersegiPanjang({super.key});

  @override
  State<KelilingPersegiPanjang> createState() => _kelilingPersegiPanjangState();
}

class _kelilingPersegiPanjangState extends State<KelilingPersegiPanjang> {

  TextEditingController  panjangController = TextEditingController();
  TextEditingController  lebarController = TextEditingController();
  final Controller controller = Get.put(Controller());


    Widget myTextField(
      TextEditingController ctr, String myLabel, TextInputType TextInputType) {
    return Container(
        margin: EdgeInsets.all(10),
        child: TextField(
            controller: ctr,
            keyboardType: TextInputType,
            decoration: InputDecoration(
                label: Text(
              myLabel,
            ))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('keliling Persegi Panjang'),
          myTextField(panjangController, 'Panjang', TextInputType.number),
          myTextField(lebarController, 'Lebar', TextInputType.number),
          SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () => controller.kelilingPersegiPanjang(
              double.parse(panjangController.text),
              double.parse(lebarController.text),
            ),
            child: Text('Hitung'),
          ),
          Obx(() => Text('hasil : ${controller.hasilKelilingPersegiPanjang.value}'))
        ]
      )
    );
  }
}