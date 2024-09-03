import 'package:get/get.dart';
import 'package:calculator_getx/pages/keliling_persegi_panjang.dart';
import 'package:calculator_getx/pages/keliling_segitiga.dart';

class Controller extends GetxController {
  final hasilKelilingSegitiga = RxDouble(0.0);
  final hasilKelilingPersegiPanjang = RxDouble(0.0);
  final hasilKelilingPersegi = RxDouble(0.0);

  KelilingSegitiga (double alas, double tinggi){
    hasilKelilingSegitiga.value = 0.5 * alas * tinggi;
}
  kelilingPersegiPanjang(double panjang, double lebar){
    hasilKelilingPersegiPanjang.value = 2 *panjang * lebar;
}
  kelilingPersegi(double sisi,){
    hasilKelilingPersegi.value = 2 *sisi;
  }
}




