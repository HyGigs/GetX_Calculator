import 'package:get/get.dart';
import 'package:calculator_getx/pages/home.dart';
import 'package:calculator_getx/pages/keliling_segitiga.dart';
import 'package:calculator_getx/pages/keliling_persegi_panjang.dart';
import 'package:calculator_getx/pages/keliling_balok.dart';
import 'package:calculator_getx/pages/keliling_kubus.dart';
import 'package:calculator_getx/pages/keliling_tabung.dart';
import 'pages/keliling_balok.dart';
import 'pages/keliling_kubus.dart';
import 'pages/keliling_tabung.dart';

class AppRoutes {
  static const String home = '/home';
  static const String kelilingSegitiga = '/kelilingSegitiga';
  static const String kelilingPersegiPanjang = '/kelilingPersegiPanjang';
  static const String kelilingBalok = '/kelilingBalok';
  static const String kelilingKubus = '/kelilingKubus';
  static const String kelilingTabung = '/kelilingTabung';

  static final routes = [
    GetPage(name: home, page: () => Home()),
    GetPage(name: kelilingSegitiga, page: () => KelilingSegitiga()),
    GetPage(name: kelilingPersegiPanjang, page: () => KelilingPersegiPanjang()),
    GetPage(name: kelilingBalok, page: () => KelilingBalok()),
    GetPage(name: kelilingKubus, page: () => KelilingKubus()),
    GetPage(name: kelilingTabung, page: () => KelilingTabung()),
  ];
}
