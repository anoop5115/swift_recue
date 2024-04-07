import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/container.dart';
import 'package:flutter_application_1/medicalhistory/views/medicalinfopage1.dart';
import 'package:flutter_application_1/medicalrecords/controller.dart/searchrecords.dart';
import 'package:flutter_application_1/signin/components/snackbar.dart';
import 'package:flutter_application_1/signin/components/textfield.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/list_notifier.dart';

class MedicalRecordSearch extends StatelessWidget {
  const MedicalRecordSearch({super.key});

  @override
  Widget build(BuildContext context) {
    MedicalController controller = Get.put(MedicalController());
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    TextEditingController idcontroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Medical Informantion"),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.blue,
                        Colors.grey.withOpacity(.4),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20)),
                height: height / 4,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Get Medical Record by ID",
                      style: TextStyle(fontSize: height / 40),
                    ),
                    textField("enter patient id", Icons.receipt, false,
                        idcontroller, TextInputType.number),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              int userId = int.tryParse(idcontroller.text) ?? 0;
                              controller.search(userId);

                              controller.f.value == 0
                                  ? snackbar("details not found ",
                                      "re -enter patient id", SnackPosition.TOP)
                                  : Get.to(
                                      Page1(rec: controller.filteredList[0]));
                              print(controller.filteredList[0]);
                            },
                            child: Text("Fetch Details"))
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
