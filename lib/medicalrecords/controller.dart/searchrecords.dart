import 'package:flutter_application_1/medicalhistory/models/medicalInfo.dart';
import 'package:get/get.dart';

class MedicalController extends GetxController {
  List filteredList = <MedicalInfo>[].obs;
  var f = RxInt(0);
  void search(int uid) {
    filteredList.clear();
    for (MedicalInfo i in MedicalInfoList) {
      if (i.uid == uid) {
        f.value = 1;

        filteredList.add(i);

        break;
      } else {
        f.value = 0;

        filteredList.clear();
      }
    }
  }
}
