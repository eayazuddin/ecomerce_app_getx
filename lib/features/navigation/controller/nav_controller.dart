import 'package:get/get.dart';

class NavigationController extends GetxController {
  RxInt currentSelectedIndex = 0.obs;

  void changeScreen(int index) {
    currentSelectedIndex.value = index;
  }
}
