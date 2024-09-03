import 'package:get/get.dart';

class Controller extends GetxController {
  final hasilKelilingSegitiga = RxDouble(0.0);
  final hasilKelilingPersegiPanjang = RxDouble(0.0);
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
