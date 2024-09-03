import 'package:calculator_getx/pages/kalkulator_aritmatika.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  // Keliling bangun datar
  final hasilKelilingSegitiga = RxDouble(0.0);
  final hasilKelilingPersegiPanjang = RxDouble(0.0);
  final hasilKelilingPersegi = RxDouble(0.0);

  // Aritmatika
  final hasilPertambahan = RxDouble(0.0);
  final hasilPengurangan = RxDouble(0.0);
  final hasilPerkalian = RxDouble(0.0);
  final hasilPembagian = RxDouble(0.0);
  final hasilModulus = RxDouble(0.0);

  // Keliling bangun ruang
  final hasilKelilingBalok = RxDouble(0.0);
  final hasilKelilingKubus = RxDouble(0.0);
  final hasilKelilingTabung = RxDouble(0.0);

  // Method untuk menghitung keliling segitiga
  void kelilingSegitiga(double sisi1, double sisi2, double sisi3) {
    hasilKelilingSegitiga.value = sisi1 + sisi2 + sisi3;
  }

  // Method untuk menghitung keliling persegi panjang
  void kelilingPersegiPanjang(double panjang, double lebar) {
    hasilKelilingPersegiPanjang.value = 2 * (panjang + lebar);
  }

  // Method untuk menghitung keliling persegi
  void kelilingPersegi(double sisi) {
    hasilKelilingPersegi.value = 4 * sisi;
  }

  // Method untuk aritmatika dasar
  void rumusAritmatika(double angka1, double angka2) {
    hasilPertambahan.value = angka1 + angka2;
    hasilModulus.value = angka1 % angka2;
    hasilPembagian.value = angka1 / angka2;
    hasilPengurangan.value = angka1 - angka2;
    hasilPerkalian.value = angka1 * angka2;
  }

  // Method untuk menghitung keliling balok
  void kelilingBalok(double panjang, double lebar, double tinggi) {
    hasilKelilingBalok.value = 4 * (panjang + lebar + tinggi);
  }

  // Method untuk menghitung keliling kubus
  void kelilingKubus(double sisi) {
    hasilKelilingKubus.value = 12 * sisi;
  }

  // Method untuk menghitung keliling tabung
  void kelilingTabung(double jari2, double tinggi) {
    hasilKelilingTabung.value = 2 * 3.14159 * jari2 * (jari2 + tinggi);
  }
}
