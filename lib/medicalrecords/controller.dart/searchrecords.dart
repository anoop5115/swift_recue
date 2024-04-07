import 'package:flutter_application_1/medicalhistory/models/medicalInfo.dart';
import 'package:get/get.dart';

class MedicalController extends GetxController {
  List filteredList = <MedicalInfo>[].obs;
  var f = RxInt(0);
  void search(int uid) {
    for (MedicalInfo i in MedicalInfoList) {
      if (i.uid == uid) {
        f.value = 1;
        print(f.value);

        print(i.name);
        filteredList.add(i);
        print(filteredList);
        break;
      } else {
        f.value = 0;
        print(f.value);
        filteredList.clear();
        print(filteredList);

        print("not found");
      }
    }
  }
}
