import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/container.dart';
import 'package:flutter_application_1/medicalhistory/models/medicalInfo.dart';
import 'package:flutter_application_1/medicalhistory/views/medicalinfopage2.dart';
import 'package:flutter_application_1/medicalrecords/controller.dart/searchrecords.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Page1 extends StatelessWidget {
  MedicalInfo rec;
  Page1({required this.rec, super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        size: 40,
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * .03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        rec.name,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * .03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Text("Age"),
                            Text(rec.age.toString(),
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text("Blood"),
                            Text(rec.blood.toString(),
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text("Weight"),
                            Text(rec.weight.toString(),
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold))
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * .03,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Text("chronic"),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: height * .13,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: rec.chronic.length,
                        itemBuilder: (index, context) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.topRight,
                                  colors: [
                                    Colors.blue,
                                    Colors.grey.withOpacity(.4),
                                  ],
                                ),
                              ),
                              width: width / 2,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Incurable",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      rec.chronic[context],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: height * .03,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Text("Treatment history"),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: height / 2,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: rec.history.length,
                        itemBuilder: (index, context) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                Get.to(Page2(rec: rec.history[context]));
                              },
                              child: Container(
                                padding: EdgeInsets.all(20),
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Colors.blue,
                                      Colors.grey.withOpacity(.4),
                                    ],
                                  ),
                                ),
                                width: width / 2,
                                child: Center(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            rec.history[context].date,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            rec.history[context].description,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            rec.history[context].doctorname,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 15,
                  )
                ],
              ),
            ),
          )),
    );
  }
}
