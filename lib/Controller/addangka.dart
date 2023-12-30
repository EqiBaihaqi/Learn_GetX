import 'package:get/get.dart';

class Tambah extends GetxController {
  var angka = 0.obs;

  void increment() {
    angka = angka++;
  }
}
