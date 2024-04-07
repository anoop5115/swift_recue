import 'package:get/get.dart';

class homecontroller extends GetxController {
  var tabIndex = 0;
  void changeTabIndex(int index) {
    tabIndex = index;
    update();
    var isselected1 = false.obs;
  }
}
