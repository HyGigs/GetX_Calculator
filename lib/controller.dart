import 'package:calculator_getx/pages/kalkulator_aritmatika.dart';
import 'package:get/get.dart';
import 'package:calculator_getx/pages/keliling_persegi_panjang.dart';
import 'package:calculator_getx/pages/keliling_segitiga.dart';

class Controller extends GetxController {
  final hasilKelilingSegitiga = RxDouble(0.0);
  final hasilKelilingPersegiPanjang = RxDouble(0.0);
  final hasilPertambahan = RxDouble(0.0);
  final hasilPengurangan = RxDouble(0.0);
  final hasilPerkalian = RxDouble(0.0);
  final hasilPembagian = RxDouble(0.0);
  final hasilModulus = RxDouble(0.0);

  KelilingSegitiga (double alas,double tinggi){
    hasilKelilingSegitiga.value = 0.5 * alas * tinggi;
}
  kelilingPersegiPanjang(double panjang, double lebar){
    hasilKelilingPersegiPanjang.value = 2*panjang * lebar;
}
  rumusAritmatika(double angka1, double angka2){
    hasilPertambahan.value = angka1 + angka2;
    hasilModulus.value = angka1 % angka2;
    hasilPembagian.value = angka1 / angka2;
    hasilPengurangan.value = angka1 - angka2;
    hasilPerkalian.value = angka1 * angka2;
  }
}

