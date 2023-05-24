import 'package:get/get.dart';

class MainController extends GetxController {
  var counter = 0.obs;

  void setCount(int value) {
    counter.value = value;
  }

  void clearWhenDispose() {
    Get.delete<MainController>();
  }
}
