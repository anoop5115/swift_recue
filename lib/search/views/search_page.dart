import 'package:flutter/material.dart';
import 'package:flutter_application_1/container.dart';
import 'package:flutter_application_1/search/models/hospital.dart';
import 'package:flutter_application_1/signin/components/textfield.dart';
import 'package:flutter_application_1/video_call/video_call_page.dart';
import 'package:get/get.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController search = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: CustomScrollView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                stretch: true,
                titleSpacing: 20,
                floating: true,
                pinned: true,
                // title: Text(" HOSPITALS"),
                title: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    child: textField("search", Icons.search, false, search,
                        TextInputType.text),
                  ),
                ),
                expandedHeight: 250,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'lib/assets/coverpage1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                      childCount: hosp_list.length,
                      (context, index) => Padding(
                            padding: EdgeInsets.only(top: 5, bottom: 5),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromARGB(255, 21, 24, 21)
                                              .withOpacity(.3),
                                          spreadRadius: 4,
                                          blurRadius: 3)
                                    ],
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.blue,
                                        Colors.grey.withOpacity(.4),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20)),
                                width: double.infinity,
                                height: 150,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  hosp_list[index]
                                                      .name
                                                      .toString()
                                                      .toUpperCase(),
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                    "city:${hosp_list[index].city}")
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text("availablity status "),
                                                CircleAvatar(
                                                  backgroundColor:
                                                      hosp_list[index].color ==
                                                              true
                                                          ? Colors.green
                                                          : Colors.red,
                                                  radius: 5,
                                                )
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                    "+91-${hosp_list[index].contact.toString()}")
                                              ],
                                            )
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            InkWell(
                                                onTap: () {
                                                  Get.to(VideoCallPage(
                                                    callID: hosp_list[index]
                                                        .contact
                                                        .toString(),
                                                  ));
                                                },
                                                child: Icon(Icons.video_call))
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )))
            ],
          ),
        ),
      ),
    );
  }
}
