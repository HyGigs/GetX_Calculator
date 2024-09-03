import 'package:calculator_getx/pages/kalkulator_aritmatika.dart';
import 'package:get/get.dart';
import 'package:calculator_getx/pages/home.dart';
import 'package:calculator_getx/pages/keliling_segitiga.dart';
import 'package:calculator_getx/pages/keliling_persegi_panjang.dart';
import 'package:calculator_getx/pages/keliling_balok.dart';
import 'package:calculator_getx/pages/keliling_kubus.dart';
import 'package:calculator_getx/pages/keliling_tabung.dart';
import 'package:calculator_getx/pages/keliling_persegi.dart';

class AppRoutes {
  static const String home = '/home';
  static const String kelilingSegitiga = '/kelilingSegitiga';
  static const String kelilingPersegiPanjang = '/kelilingPersegiPanjang';
  static const String kelilingBalok = '/kelilingBalok';
  static const String kelilingKubus = '/kelilingKubus';
  static const String kelilingTabung = '/kelilingTabung';
  static const String kelilingPersegi = '/kelilingPersegi';
  static const String aritmatika = '/aritmatika';

  static final routes = [
    GetPage(name: home, page: () => Home()),
    GetPage(name: kelilingSegitiga, page: () => KelilingSegitiga()),
    GetPage(name: kelilingPersegiPanjang, page: () => KelilingPersegiPanjang()),
    GetPage(name: kelilingBalok, page: () => KelilingBalok()),
    GetPage(name: kelilingKubus, page: () => KelilingKubus()),
    GetPage(name: kelilingTabung, page: () => KelilingTabung()),
    GetPage(name: kelilingPersegi, page: () => KelilingPersegi()),
    GetPage(name: aritmatika, page: () => KalkulatorAritmatika()),
  ];
}
