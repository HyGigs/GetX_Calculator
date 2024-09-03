import 'package:get/get.dart';
import 'package:calculator_getx/pages/home.dart';
import 'package:calculator_getx/pages/keliling_segitiga.dart';
import 'package:calculator_getx/pages/keliling_persegi_panjang.dart';
import 'package:calculator_getx/pages/keliling_persegi.dart';
class AppRoutes {
  static const String home = '/home';
  static const String kelilingSegitiga = '/kelilingSegitiga';
  static const String kelilingPersegiPanjang = '/kelilingPersegiPanjang';
  static const String kelilingPersegi = '/kelilingPersegi';


  static final routes = [
    GetPage(name: home, page: () => Home()),
    GetPage(name: kelilingSegitiga, page: () =>  KelilingSegitiga()),
    GetPage(name: kelilingPersegiPanjang, page: () => KelilingPersegiPanjang()),
    GetPage(name: kelilingPersegi, page: () => KelilingPersegi())
  ];
}