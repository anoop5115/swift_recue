import 'package:flutter/material.dart';
import 'package:flutter_application_1/medicalhistory/models/medicalInfo.dart';
import 'package:flutter_application_1/medicalhistory/views/reports.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  Treat_Hist rec;
  Page2({required this.rec, super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          rec.description,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(rec.date),
              SizedBox(
                height: height * .03,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "symptoms",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.withOpacity(.8)),
                      ),
                      Text(rec.symptoms)
                    ],
                  )
                ],
              ),
              SizedBox(
                height: height * .03,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "conclusion",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.withOpacity(.8)),
                      ),
                      Text(rec.conclusion)
                    ],
                  )
                ],
              ),
              SizedBox(
                height: height * .03,
              ),
              Text("conclusion by    :${rec.doctorname}",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color:
                          const Color.fromARGB(255, 9, 9, 9).withOpacity(.8))),
              SizedBox(
                height: height * .03,
              ),
              Row(
                children: [
                  Text("medications",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.withOpacity(.8)))
                ],
              ),
              Container(
                width: double.infinity,
                height: height * .23,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: rec?.medicines.length,
                    itemBuilder: (index, context) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
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
                          padding: const EdgeInsets.all(10),
                          height: 50,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(rec.medicines[context]),
                              const Text("100mg")
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: height * .03,
              ),
              Text(
                "Analytics",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.withOpacity(.8)),
              ),
              SizedBox(
                height: height * .03,
              ),
              InkWell(
                onTap: () {
                  Get.to(Report(rec: rec));
                },
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // border: Border.all(color: Colors.blue),
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(255, 255, 79, 21),
                        Color.fromARGB(255, 233, 233, 233),
                      ],
                    ),
                  ),
                  child: const Center(
                      child: Text(
                    "REPORTS",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
