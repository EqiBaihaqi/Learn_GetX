import 'package:get/get.dart';

class MyController extends GetxController {
  var isDark = false.obs;

  void changeTheme() => isDark.value = !isDark.value;
}
