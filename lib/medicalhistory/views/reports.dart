import 'package:flutter/material.dart';
import 'package:flutter_application_1/container.dart';
import 'package:flutter_application_1/medicalhistory/models/medicalInfo.dart';
import 'package:get/get.dart';

class Report extends StatelessWidget {
  Treat_Hist rec;
  Report({required this.rec, super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: InkWell(
          onTap: () {
            Get.bottomSheet(Container(
              padding: EdgeInsets.all(20),
              height: height / 2,
              width: width,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.2),
                  borderRadius: BorderRadius.circular(40)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "acute sign of pnemonia is obserberved \n Findings consistent with pneumonia, including consolidation in the [affected lung lobe/lobes].\nAssessment and Plan:\nDiagnosis: Community-acquired pneumonia, likely bacterial in etiology.",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    rec.doctorname,
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ));
          },
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Image(image: rec.image),
          )),
    );
  }
}
